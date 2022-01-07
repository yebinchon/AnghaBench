
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int WQ_MEM_RECLAIM ;
 int alloc_ordered_workqueue (char*,int ) ;
 int atomic_set (int *,int ) ;
 int get_random_bytes (int *,int) ;
 int ib_nl_request_timeout ;
 int ib_nl_sa_request_seq ;
 int ib_nl_timed_work ;
 int ib_nl_wq ;
 int ib_register_client (int *) ;
 int ib_unregister_client (int *) ;
 int mcast_cleanup () ;
 int mcast_init () ;
 int pr_err (char*) ;
 int sa_client ;
 int tid ;

int ib_sa_init(void)
{
 int ret;

 get_random_bytes(&tid, sizeof tid);

 atomic_set(&ib_nl_sa_request_seq, 0);

 ret = ib_register_client(&sa_client);
 if (ret) {
  pr_err("Couldn't register ib_sa client\n");
  goto err1;
 }

 ret = mcast_init();
 if (ret) {
  pr_err("Couldn't initialize multicast handling\n");
  goto err2;
 }

 ib_nl_wq = alloc_ordered_workqueue("ib_nl_sa_wq", WQ_MEM_RECLAIM);
 if (!ib_nl_wq) {
  ret = -ENOMEM;
  goto err3;
 }

 INIT_DELAYED_WORK(&ib_nl_timed_work, ib_nl_request_timeout);

 return 0;

err3:
 mcast_cleanup();
err2:
 ib_unregister_client(&sa_client);
err1:
 return ret;
}
