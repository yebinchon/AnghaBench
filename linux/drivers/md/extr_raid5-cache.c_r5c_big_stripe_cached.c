
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5l_log {int big_stripe_tree; } ;
struct r5conf {struct r5l_log* log; } ;
typedef int sector_t ;


 int WARN_ON_ONCE (int) ;
 int r5c_tree_index (struct r5conf*,int ) ;
 void* radix_tree_lookup (int *,int ) ;
 int rcu_read_lock_held () ;

bool r5c_big_stripe_cached(struct r5conf *conf, sector_t sect)
{
 struct r5l_log *log = conf->log;
 sector_t tree_index;
 void *slot;

 if (!log)
  return 0;

 WARN_ON_ONCE(!rcu_read_lock_held());
 tree_index = r5c_tree_index(conf, sect);
 slot = radix_tree_lookup(&log->big_stripe_tree, tree_index);
 return slot != ((void*)0);
}
