
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int workitem ;
struct dj_workitem {int type; } ;
struct dj_receiver_dev {int work; int notif_fifo; scalar_t__ last_query; } ;


 int HZ ;
 int WORKITEM_TYPE_UNKNOWN ;
 int jiffies ;
 int kfifo_in (int *,struct dj_workitem*,int) ;
 int schedule_work (int *) ;
 scalar_t__ time_before (int ,scalar_t__) ;

__attribute__((used)) static void logi_dj_recv_queue_unknown_work(struct dj_receiver_dev *djrcv_dev)
{
 struct dj_workitem workitem = { .type = WORKITEM_TYPE_UNKNOWN };


 if (time_before(jiffies, djrcv_dev->last_query + HZ / 2))
  return;

 kfifo_in(&djrcv_dev->notif_fifo, &workitem, sizeof(workitem));
 schedule_work(&djrcv_dev->work);
}
