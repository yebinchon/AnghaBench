
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dev; int name; } ;
struct iio_loop_info {int task; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 int iio_loop_thread ;
 struct iio_loop_info* iio_trigger_get_drvdata (struct iio_trigger*) ;
 int kthread_run (int ,struct iio_trigger*,int ) ;
 int kthread_stop (int ) ;

__attribute__((used)) static int iio_loop_trigger_set_state(struct iio_trigger *trig, bool state)
{
 struct iio_loop_info *loop_trig = iio_trigger_get_drvdata(trig);

 if (state) {
  loop_trig->task = kthread_run(iio_loop_thread,
           trig, trig->name);
  if (IS_ERR(loop_trig->task)) {
   dev_err(&trig->dev,
    "failed to create trigger loop thread\n");
   return PTR_ERR(loop_trig->task);
  }
 } else {
  kthread_stop(loop_trig->task);
 }

 return 0;
}
