
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct i40iw_vsi_pestat {int lock; } ;


 scalar_t__ I40IW_HW_STAT_INDEX_MAX_32 ;
 scalar_t__ I40IW_HW_STAT_INDEX_MAX_64 ;
 int i40iw_hw_stats_read_32 (struct i40iw_vsi_pestat*,scalar_t__,int *) ;
 int i40iw_hw_stats_read_64 (struct i40iw_vsi_pestat*,scalar_t__,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void i40iw_hw_stats_refresh_all(struct i40iw_vsi_pestat *stats)
{
 u64 stats_value;
 u32 stats_index;
 unsigned long flags;

 spin_lock_irqsave(&stats->lock, flags);

 for (stats_index = 0; stats_index < I40IW_HW_STAT_INDEX_MAX_32;
      stats_index++)
  i40iw_hw_stats_read_32(stats, stats_index, &stats_value);
 for (stats_index = 0; stats_index < I40IW_HW_STAT_INDEX_MAX_64;
      stats_index++)
  i40iw_hw_stats_read_64(stats, stats_index, &stats_value);
 spin_unlock_irqrestore(&stats->lock, flags);
}
