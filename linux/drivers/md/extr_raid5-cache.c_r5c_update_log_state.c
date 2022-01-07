
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r5l_log {int last_checkpoint; int log_start; TYPE_1__* rdev; } ;
struct r5conf {int cache_state; } ;
typedef int sector_t ;
struct TYPE_4__ {struct r5conf* private; } ;
struct TYPE_3__ {TYPE_2__* mddev; } ;


 int R5C_LOG_CRITICAL ;
 int R5C_LOG_TIGHT ;
 int clear_bit (int ,int *) ;
 int r5c_is_writeback (struct r5l_log*) ;
 int r5c_log_required_to_flush_cache (struct r5conf*) ;
 int r5l_ring_distance (struct r5l_log*,int ,int ) ;
 int r5l_wake_reclaim (struct r5l_log*,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline void r5c_update_log_state(struct r5l_log *log)
{
 struct r5conf *conf = log->rdev->mddev->private;
 sector_t free_space;
 sector_t reclaim_space;
 bool wake_reclaim = 0;

 if (!r5c_is_writeback(log))
  return;

 free_space = r5l_ring_distance(log, log->log_start,
           log->last_checkpoint);
 reclaim_space = r5c_log_required_to_flush_cache(conf);
 if (free_space < 2 * reclaim_space)
  set_bit(R5C_LOG_CRITICAL, &conf->cache_state);
 else {
  if (test_bit(R5C_LOG_CRITICAL, &conf->cache_state))
   wake_reclaim = 1;
  clear_bit(R5C_LOG_CRITICAL, &conf->cache_state);
 }
 if (free_space < 3 * reclaim_space)
  set_bit(R5C_LOG_TIGHT, &conf->cache_state);
 else
  clear_bit(R5C_LOG_TIGHT, &conf->cache_state);

 if (wake_reclaim)
  r5l_wake_reclaim(log, 0);
}
