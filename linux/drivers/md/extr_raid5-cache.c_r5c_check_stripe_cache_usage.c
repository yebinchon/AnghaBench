
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int min_nr_stripes; int log; int empty_inactive_list_nr; int r5c_cached_full_stripes; int r5c_cached_partial_stripes; } ;


 int atomic_read (int *) ;
 int r5c_is_writeback (int ) ;
 int r5l_wake_reclaim (int ,int ) ;

void r5c_check_stripe_cache_usage(struct r5conf *conf)
{
 int total_cached;

 if (!r5c_is_writeback(conf->log))
  return;

 total_cached = atomic_read(&conf->r5c_cached_partial_stripes) +
  atomic_read(&conf->r5c_cached_full_stripes);
 if (total_cached > conf->min_nr_stripes * 1 / 2 ||
     atomic_read(&conf->empty_inactive_list_nr) > 0)
  r5l_wake_reclaim(conf->log, 0);
}
