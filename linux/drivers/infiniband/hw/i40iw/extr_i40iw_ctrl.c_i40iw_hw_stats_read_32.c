
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct i40iw_dev_hw_stats {scalar_t__* stats_value_32; } ;
struct i40iw_dev_hw_stats_offsets {int * stats_offset_32; } ;
struct i40iw_vsi_pestat {int hw; struct i40iw_dev_hw_stats hw_stats; struct i40iw_dev_hw_stats last_read_hw_stats; struct i40iw_dev_hw_stats_offsets hw_stats_offsets; } ;
typedef enum i40iw_hw_stats_index_32b { ____Placeholder_i40iw_hw_stats_index_32b } i40iw_hw_stats_index_32b ;


 scalar_t__ i40iw_rd32 (int ,int ) ;

void i40iw_hw_stats_read_32(struct i40iw_vsi_pestat *stats,
       enum i40iw_hw_stats_index_32b index,
       u64 *value)
{
 struct i40iw_dev_hw_stats_offsets *stats_table =
  &stats->hw_stats_offsets;
 struct i40iw_dev_hw_stats *last_rd_stats = &stats->last_read_hw_stats;
 struct i40iw_dev_hw_stats *hw_stats = &stats->hw_stats;
 u64 new_stats_value = 0;
 u32 stats_reg_offset = stats_table->stats_offset_32[index];

 new_stats_value = i40iw_rd32(stats->hw, stats_reg_offset);

 if (new_stats_value < last_rd_stats->stats_value_32[index])
  hw_stats->stats_value_32[index] += new_stats_value;
 else
  hw_stats->stats_value_32[index] +=
   new_stats_value - last_rd_stats->stats_value_32[index];
 last_rd_stats->stats_value_32[index] = new_stats_value;
 *value = hw_stats->stats_value_32[index];
}
