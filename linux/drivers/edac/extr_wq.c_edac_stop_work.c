
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delayed_work {int dummy; } ;


 int cancel_delayed_work_sync (struct delayed_work*) ;
 int flush_workqueue (int ) ;
 int wq ;

bool edac_stop_work(struct delayed_work *work)
{
 bool ret;

 ret = cancel_delayed_work_sync(work);
 flush_workqueue(wq);

 return ret;
}
