
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int control_base_addr; } ;
struct rmi_function {int dev; TYPE_1__ fd; int rmi_dev; } ;
struct TYPE_4__ {int ctrl0; } ;
struct f01_data {TYPE_2__ device_control; scalar_t__ old_nosleep; } ;


 int RMI_F01_CTRL0_NOSLEEP_BIT ;
 int RMI_F01_CTRL0_SLEEP_MODE_MASK ;
 int RMI_SLEEP_MODE_NORMAL ;
 int dev_err (int *,char*,int) ;
 struct f01_data* dev_get_drvdata (int *) ;
 int rmi_write (int ,int ,int ) ;

__attribute__((used)) static int rmi_f01_resume(struct rmi_function *fn)
{
 struct f01_data *f01 = dev_get_drvdata(&fn->dev);
 int error;

 if (f01->old_nosleep)
  f01->device_control.ctrl0 |= RMI_F01_CTRL0_NOSLEEP_BIT;

 f01->device_control.ctrl0 &= ~RMI_F01_CTRL0_SLEEP_MODE_MASK;
 f01->device_control.ctrl0 |= RMI_SLEEP_MODE_NORMAL;

 error = rmi_write(fn->rmi_dev, fn->fd.control_base_addr,
     f01->device_control.ctrl0);
 if (error) {
  dev_err(&fn->dev,
   "Failed to restore normal operation: %d.\n", error);
  return error;
 }

 return 0;
}
