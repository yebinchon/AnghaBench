
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_vsi_pestat {int stats_timer; } ;
struct i40iw_sc_vsi {struct i40iw_vsi_pestat* pestat; } ;


 int del_timer_sync (int *) ;

void i40iw_hw_stats_stop_timer(struct i40iw_sc_vsi *vsi)
{
 struct i40iw_vsi_pestat *devstat = vsi->pestat;

 del_timer_sync(&devstat->stats_timer);
}
