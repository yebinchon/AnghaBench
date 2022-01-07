
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5l_log {int stripe_in_journal_count; } ;
struct r5conf {int max_degraded; int raid_disks; int group_cnt; struct r5l_log* log; } ;
typedef int sector_t ;


 int BLOCK_SECTORS ;
 int atomic_read (int *) ;
 int r5c_is_writeback (struct r5l_log*) ;

__attribute__((used)) static sector_t r5c_log_required_to_flush_cache(struct r5conf *conf)
{
 struct r5l_log *log = conf->log;

 if (!r5c_is_writeback(log))
  return 0;

 return BLOCK_SECTORS *
  ((conf->max_degraded + 1) * atomic_read(&log->stripe_in_journal_count) +
   (conf->raid_disks - conf->max_degraded) * (conf->group_cnt + 1));
}
