
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ query_base_addr; } ;
struct device {int dummy; } ;
struct rmi_function {TYPE_1__ fd; int rmi_dev; struct device dev; } ;
struct f03_data {int device_count; int rx_queue_length; struct rmi_function* fn; } ;


 int RMI_F03_BYTES_PER_DEVICE ;
 int RMI_F03_BYTES_PER_DEVICE_SHIFT ;
 int RMI_F03_DEVICE_COUNT ;
 int RMI_F03_QUEUE_LENGTH ;
 int dev_err (struct device*,char*,int) ;
 int rmi_read (int ,scalar_t__,int*) ;
 int rmi_read_block (int ,scalar_t__,int*,size_t) ;

__attribute__((used)) static int rmi_f03_initialize(struct f03_data *f03)
{
 struct rmi_function *fn = f03->fn;
 struct device *dev = &fn->dev;
 int error;
 u8 bytes_per_device;
 u8 query1;
 u8 query2[RMI_F03_DEVICE_COUNT * RMI_F03_BYTES_PER_DEVICE];
 size_t query2_len;

 error = rmi_read(fn->rmi_dev, fn->fd.query_base_addr, &query1);
 if (error) {
  dev_err(dev, "Failed to read query register (%d).\n", error);
  return error;
 }

 f03->device_count = query1 & RMI_F03_DEVICE_COUNT;
 bytes_per_device = (query1 >> RMI_F03_BYTES_PER_DEVICE_SHIFT) &
    RMI_F03_BYTES_PER_DEVICE;

 query2_len = f03->device_count * bytes_per_device;





 if (query2_len < 1) {
  f03->device_count = 1;
  f03->rx_queue_length = 7;
 } else {
  error = rmi_read_block(fn->rmi_dev, fn->fd.query_base_addr + 1,
           query2, query2_len);
  if (error) {
   dev_err(dev,
    "Failed to read second set of query registers (%d).\n",
    error);
   return error;
  }

  f03->rx_queue_length = query2[0] & RMI_F03_QUEUE_LENGTH;
 }

 return 0;
}
