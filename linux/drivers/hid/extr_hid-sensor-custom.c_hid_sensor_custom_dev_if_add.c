
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * fops; int name; int minor; } ;
struct hid_sensor_custom {int data_fifo; TYPE_2__ custom_dev; TYPE_1__* pdev; int wait; } ;
struct TYPE_3__ {int dev; } ;


 int GFP_KERNEL ;
 int HID_CUSTOM_FIFO_SIZE ;
 int MISC_DYNAMIC_MINOR ;
 int dev_name (int *) ;
 int hid_sensor_custom_fops ;
 int init_waitqueue_head (int *) ;
 int kfifo_alloc (int *,int ,int ) ;
 int kfifo_free (int *) ;
 int misc_register (TYPE_2__*) ;

__attribute__((used)) static int hid_sensor_custom_dev_if_add(struct hid_sensor_custom *sensor_inst)
{
 int ret;

 ret = kfifo_alloc(&sensor_inst->data_fifo, HID_CUSTOM_FIFO_SIZE,
     GFP_KERNEL);
 if (ret)
  return ret;

 init_waitqueue_head(&sensor_inst->wait);

 sensor_inst->custom_dev.minor = MISC_DYNAMIC_MINOR;
 sensor_inst->custom_dev.name = dev_name(&sensor_inst->pdev->dev);
 sensor_inst->custom_dev.fops = &hid_sensor_custom_fops,
 ret = misc_register(&sensor_inst->custom_dev);
 if (ret) {
  kfifo_free(&sensor_inst->data_fifo);
  return ret;
 }
 return 0;
}
