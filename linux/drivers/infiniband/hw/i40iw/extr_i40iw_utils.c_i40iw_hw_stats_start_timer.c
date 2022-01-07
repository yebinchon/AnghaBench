
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_vsi_pestat {int stats_timer; } ;
struct i40iw_sc_vsi {struct i40iw_vsi_pestat* pestat; } ;


 int STATS_TIMER_DELAY ;
 int i40iw_hw_stats_timeout ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int timer_setup (int *,int ,int ) ;

void i40iw_hw_stats_start_timer(struct i40iw_sc_vsi *vsi)
{
 struct i40iw_vsi_pestat *devstat = vsi->pestat;

 timer_setup(&devstat->stats_timer, i40iw_hw_stats_timeout, 0);
 mod_timer(&devstat->stats_timer,
    jiffies + msecs_to_jiffies(STATS_TIMER_DELAY));
}
