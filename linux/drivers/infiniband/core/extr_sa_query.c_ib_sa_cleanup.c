
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;
 int cancel_delayed_work (int *) ;
 int destroy_workqueue (int ) ;
 int flush_workqueue (int ) ;
 int ib_nl_timed_work ;
 int ib_nl_wq ;
 int ib_unregister_client (int *) ;
 int mcast_cleanup () ;
 int queries ;
 int sa_client ;
 int xa_empty (int *) ;

void ib_sa_cleanup(void)
{
 cancel_delayed_work(&ib_nl_timed_work);
 flush_workqueue(ib_nl_wq);
 destroy_workqueue(ib_nl_wq);
 mcast_cleanup();
 ib_unregister_client(&sa_client);
 WARN_ON(!xa_empty(&queries));
}
