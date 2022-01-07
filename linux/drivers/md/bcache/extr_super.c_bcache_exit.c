
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bcache_kobj ;
 scalar_t__ bcache_major ;
 scalar_t__ bcache_wq ;
 int bch_debug_exit () ;
 scalar_t__ bch_journal_wq ;
 int bch_register_lock ;
 int bch_request_exit () ;
 int destroy_workqueue (scalar_t__) ;
 int kobject_put (scalar_t__) ;
 int mutex_destroy (int *) ;
 int reboot ;
 int unregister_blkdev (scalar_t__,char*) ;
 int unregister_reboot_notifier (int *) ;

__attribute__((used)) static void bcache_exit(void)
{
 bch_debug_exit();
 bch_request_exit();
 if (bcache_kobj)
  kobject_put(bcache_kobj);
 if (bcache_wq)
  destroy_workqueue(bcache_wq);
 if (bch_journal_wq)
  destroy_workqueue(bch_journal_wq);

 if (bcache_major)
  unregister_blkdev(bcache_major, "bcache");
 unregister_reboot_notifier(&reboot);
 mutex_destroy(&bch_register_lock);
}
