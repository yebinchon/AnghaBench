
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct timer_list {int dummy; } ;
struct i40iw_vsi_pestat {int stats_timer; int lock; int hw_stats; struct i40iw_sc_vsi* vsi; } ;
struct i40iw_sc_vsi {struct i40iw_sc_dev* dev; } ;
struct i40iw_sc_dev {TYPE_1__** vf_dev; } ;
struct TYPE_2__ {struct i40iw_vsi_pestat pestat; scalar_t__ stats_initialized; } ;


 size_t I40IW_MAX_PE_ENABLED_VF_COUNT ;
 int STATS_TIMER_DELAY ;
 struct i40iw_vsi_pestat* from_timer (int ,struct timer_list*,int ) ;
 int i40iw_hw_stats_read_all (struct i40iw_vsi_pestat*,int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 struct i40iw_vsi_pestat* pf_devstat ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stats_timer ;

__attribute__((used)) static void i40iw_hw_stats_timeout(struct timer_list *t)
{
 struct i40iw_vsi_pestat *pf_devstat = from_timer(pf_devstat, t,
             stats_timer);
 struct i40iw_sc_vsi *sc_vsi = pf_devstat->vsi;
 struct i40iw_sc_dev *pf_dev = sc_vsi->dev;
 struct i40iw_vsi_pestat *vf_devstat = ((void*)0);
 u16 iw_vf_idx;
 unsigned long flags;


 i40iw_hw_stats_read_all(pf_devstat, &pf_devstat->hw_stats);

 for (iw_vf_idx = 0; iw_vf_idx < I40IW_MAX_PE_ENABLED_VF_COUNT; iw_vf_idx++) {
  spin_lock_irqsave(&pf_devstat->lock, flags);
  if (pf_dev->vf_dev[iw_vf_idx]) {
   if (pf_dev->vf_dev[iw_vf_idx]->stats_initialized) {
    vf_devstat = &pf_dev->vf_dev[iw_vf_idx]->pestat;
    i40iw_hw_stats_read_all(vf_devstat, &vf_devstat->hw_stats);
   }
  }
  spin_unlock_irqrestore(&pf_devstat->lock, flags);
 }

 mod_timer(&pf_devstat->stats_timer,
    jiffies + msecs_to_jiffies(STATS_TIMER_DELAY));
}
