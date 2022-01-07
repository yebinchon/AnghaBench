
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rmi_function {int dev; struct rmi_device* rmi_dev; } ;
struct TYPE_2__ {int size; scalar_t__ data; } ;
struct rmi_driver_data {TYPE_1__ attn_data; } ;
struct rmi_device {int dev; } ;
struct rmi_2d_sensor {int pkt_size; int attn_size; int input; int * data_pkt; } ;
struct f12_data {size_t data1_offset; scalar_t__ data1; int data_addr; struct rmi_2d_sensor sensor; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_RETVAL (int) ;
 int dev_err (int *,char*,int) ;
 void* dev_get_drvdata (int *) ;
 int input_mt_sync_frame (int ) ;
 int memcpy (int *,scalar_t__,int) ;
 int rmi_f12_process_objects (struct f12_data*,int *,int) ;
 int rmi_read_block (struct rmi_device*,int ,int *,int) ;

__attribute__((used)) static irqreturn_t rmi_f12_attention(int irq, void *ctx)
{
 int retval;
 struct rmi_function *fn = ctx;
 struct rmi_device *rmi_dev = fn->rmi_dev;
 struct rmi_driver_data *drvdata = dev_get_drvdata(&rmi_dev->dev);
 struct f12_data *f12 = dev_get_drvdata(&fn->dev);
 struct rmi_2d_sensor *sensor = &f12->sensor;
 int valid_bytes = sensor->pkt_size;

 if (drvdata->attn_data.data) {
  if (sensor->attn_size > drvdata->attn_data.size)
   valid_bytes = drvdata->attn_data.size;
  else
   valid_bytes = sensor->attn_size;
  memcpy(sensor->data_pkt, drvdata->attn_data.data,
   valid_bytes);
  drvdata->attn_data.data += valid_bytes;
  drvdata->attn_data.size -= valid_bytes;
 } else {
  retval = rmi_read_block(rmi_dev, f12->data_addr,
     sensor->data_pkt, sensor->pkt_size);
  if (retval < 0) {
   dev_err(&fn->dev, "Failed to read object data. Code: %d.\n",
    retval);
   return IRQ_RETVAL(retval);
  }
 }

 if (f12->data1)
  rmi_f12_process_objects(f12,
   &sensor->data_pkt[f12->data1_offset], valid_bytes);

 input_mt_sync_frame(sensor->input);

 return IRQ_HANDLED;
}
