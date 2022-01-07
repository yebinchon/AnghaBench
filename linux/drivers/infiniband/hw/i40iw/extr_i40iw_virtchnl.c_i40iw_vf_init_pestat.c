
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct i40iw_vsi_pestat {int lock; int hw; } ;
struct i40iw_sc_dev {int hw; } ;


 int i40iw_hw_stats_init (struct i40iw_vsi_pestat*,int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void i40iw_vf_init_pestat(struct i40iw_sc_dev *dev, struct i40iw_vsi_pestat *stats, u16 index)
{
 stats->hw = dev->hw;
 i40iw_hw_stats_init(stats, (u8)index, 0);
 spin_lock_init(&stats->lock);
}
