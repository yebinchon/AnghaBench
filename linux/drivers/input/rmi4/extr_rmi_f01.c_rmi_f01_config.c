
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int control_base_addr; } ;
struct rmi_function {int dev; int rmi_dev; TYPE_1__ fd; } ;
struct TYPE_6__ {int doze_holdoff; int wakeup_threshold; int doze_interval; int ctrl0; } ;
struct TYPE_5__ {scalar_t__ has_adjustable_doze_holdoff; scalar_t__ has_adjustable_doze; } ;
struct f01_data {TYPE_3__ device_control; int doze_holdoff_addr; TYPE_2__ properties; int wakeup_threshold_addr; int doze_interval_addr; } ;


 int dev_err (int *,char*,int) ;
 struct f01_data* dev_get_drvdata (int *) ;
 int rmi_write (int ,int ,int ) ;
 int rmi_write_block (int ,int ,int *,int) ;

__attribute__((used)) static int rmi_f01_config(struct rmi_function *fn)
{
 struct f01_data *f01 = dev_get_drvdata(&fn->dev);
 int error;

 error = rmi_write(fn->rmi_dev, fn->fd.control_base_addr,
     f01->device_control.ctrl0);
 if (error) {
  dev_err(&fn->dev,
   "Failed to write device_control register: %d\n", error);
  return error;
 }

 if (f01->properties.has_adjustable_doze) {
  error = rmi_write(fn->rmi_dev, f01->doze_interval_addr,
      f01->device_control.doze_interval);
  if (error) {
   dev_err(&fn->dev,
    "Failed to write doze interval: %d\n", error);
   return error;
  }

  error = rmi_write_block(fn->rmi_dev,
      f01->wakeup_threshold_addr,
      &f01->device_control.wakeup_threshold,
      sizeof(u8));
  if (error) {
   dev_err(&fn->dev,
    "Failed to write wakeup threshold: %d\n",
    error);
   return error;
  }
 }

 if (f01->properties.has_adjustable_doze_holdoff) {
  error = rmi_write(fn->rmi_dev, f01->doze_holdoff_addr,
      f01->device_control.doze_holdoff);
  if (error) {
   dev_err(&fn->dev,
    "Failed to write doze holdoff: %d\n", error);
   return error;
  }
 }

 return 0;
}
