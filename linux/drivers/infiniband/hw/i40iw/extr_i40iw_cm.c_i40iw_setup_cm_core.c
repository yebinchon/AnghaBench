
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_cm_core {void* disconn_wq; void* event_wq; int apbvt_lock; int listen_list_lock; int ht_lock; int tcp_timer; int listen_nodes; int non_accelerated_list; int accelerated_list; int * dev; struct i40iw_device* iwdev; } ;
struct i40iw_device {struct i40iw_cm_core cm_core; int sc_dev; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int WQ_MEM_RECLAIM ;
 void* alloc_ordered_workqueue (char*,int ) ;
 int i40iw_cleanup_cm_core (struct i40iw_cm_core*) ;
 int i40iw_cm_timer_tick ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

int i40iw_setup_cm_core(struct i40iw_device *iwdev)
{
 struct i40iw_cm_core *cm_core = &iwdev->cm_core;

 cm_core->iwdev = iwdev;
 cm_core->dev = &iwdev->sc_dev;

 INIT_LIST_HEAD(&cm_core->accelerated_list);
 INIT_LIST_HEAD(&cm_core->non_accelerated_list);
 INIT_LIST_HEAD(&cm_core->listen_nodes);

 timer_setup(&cm_core->tcp_timer, i40iw_cm_timer_tick, 0);

 spin_lock_init(&cm_core->ht_lock);
 spin_lock_init(&cm_core->listen_list_lock);
 spin_lock_init(&cm_core->apbvt_lock);

 cm_core->event_wq = alloc_ordered_workqueue("iwewq",
          WQ_MEM_RECLAIM);
 if (!cm_core->event_wq)
  goto error;

 cm_core->disconn_wq = alloc_ordered_workqueue("iwdwq",
            WQ_MEM_RECLAIM);
 if (!cm_core->disconn_wq)
  goto error;

 return 0;
error:
 i40iw_cleanup_cm_core(&iwdev->cm_core);

 return -ENOMEM;
}
