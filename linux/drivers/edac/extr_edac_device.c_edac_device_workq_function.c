
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct edac_device_ctl_info {scalar_t__ op_state; int poll_msec; int delay; int work; int (* edac_check ) (struct edac_device_ctl_info*) ;} ;
struct delayed_work {int dummy; } ;


 scalar_t__ OP_OFFLINE ;
 scalar_t__ OP_RUNNING_POLL ;
 int device_ctls_mutex ;
 int edac_queue_work (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int round_jiffies_relative (int ) ;
 int stub1 (struct edac_device_ctl_info*) ;
 struct delayed_work* to_delayed_work (struct work_struct*) ;
 struct edac_device_ctl_info* to_edac_device_ctl_work (struct delayed_work*) ;

__attribute__((used)) static void edac_device_workq_function(struct work_struct *work_req)
{
 struct delayed_work *d_work = to_delayed_work(work_req);
 struct edac_device_ctl_info *edac_dev = to_edac_device_ctl_work(d_work);

 mutex_lock(&device_ctls_mutex);


 if (edac_dev->op_state == OP_OFFLINE) {
  mutex_unlock(&device_ctls_mutex);
  return;
 }


 if ((edac_dev->op_state == OP_RUNNING_POLL) &&
  (edac_dev->edac_check != ((void*)0))) {
   edac_dev->edac_check(edac_dev);
 }

 mutex_unlock(&device_ctls_mutex);






 if (edac_dev->poll_msec == 1000)
  edac_queue_work(&edac_dev->work, round_jiffies_relative(edac_dev->delay));
 else
  edac_queue_work(&edac_dev->work, edac_dev->delay);
}
