
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r5l_log {int io_kc; int io_pool; int bs; int meta_pool; int reclaim_thread; int disable_writeback_work; } ;
struct r5conf {TYPE_1__* mddev; struct r5l_log* log; } ;
struct TYPE_2__ {int sb_wait; } ;


 int bioset_exit (int *) ;
 int flush_work (int *) ;
 int kfree (struct r5l_log*) ;
 int kmem_cache_destroy (int ) ;
 int md_unregister_thread (int *) ;
 int mempool_exit (int *) ;
 int synchronize_rcu () ;
 int wake_up (int *) ;

void r5l_exit_log(struct r5conf *conf)
{
 struct r5l_log *log = conf->log;

 conf->log = ((void*)0);
 synchronize_rcu();


 wake_up(&conf->mddev->sb_wait);
 flush_work(&log->disable_writeback_work);
 md_unregister_thread(&log->reclaim_thread);
 mempool_exit(&log->meta_pool);
 bioset_exit(&log->bs);
 mempool_exit(&log->io_pool);
 kmem_cache_destroy(log->io_kc);
 kfree(log);
}
