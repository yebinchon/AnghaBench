
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int command_base_addr; } ;
struct rmi_function {TYPE_3__ fd; struct rmi_device* rmi_dev; int dev; } ;
struct rmi_device {int dummy; } ;
struct f54_data {int is_busy; int data_mutex; int work; int workqueue; scalar_t__ timeout; int cmd_done; int report_type; TYPE_2__* fn; } ;
struct TYPE_4__ {int data_base_addr; } ;
struct TYPE_5__ {TYPE_1__ fd; } ;


 int F54_GET_REPORT ;
 struct f54_data* dev_get_drvdata (int *) ;
 int init_completion (int *) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 int rmi_write (struct rmi_device*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rmi_f54_request_report(struct rmi_function *fn, u8 report_type)
{
 struct f54_data *f54 = dev_get_drvdata(&fn->dev);
 struct rmi_device *rmi_dev = fn->rmi_dev;
 int error;


 if (f54->report_type != report_type) {
  error = rmi_write(rmi_dev, f54->fn->fd.data_base_addr,
      report_type);
  if (error)
   return error;
  f54->report_type = report_type;
 }






 usleep_range(2000, 3000);

 mutex_lock(&f54->data_mutex);

 error = rmi_write(rmi_dev, fn->fd.command_base_addr, F54_GET_REPORT);
 if (error < 0)
  goto unlock;

 init_completion(&f54->cmd_done);

 f54->is_busy = 1;
 f54->timeout = jiffies + msecs_to_jiffies(100);

 queue_delayed_work(f54->workqueue, &f54->work, 0);

unlock:
 mutex_unlock(&f54->data_mutex);

 return error;
}
