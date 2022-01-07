
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct i40iw_sc_vsi {size_t fcn_id; TYPE_1__* dev; scalar_t__ stats_fcn_id_alloc; } ;
struct TYPE_2__ {int* fcn_id_array; } ;


 size_t I40IW_MAX_STATS_COUNT ;
 int i40iw_hw_stats_stop_timer (struct i40iw_sc_vsi*) ;

void i40iw_vsi_stats_free(struct i40iw_sc_vsi *vsi)
{
 u8 fcn_id = vsi->fcn_id;

 if (vsi->stats_fcn_id_alloc && fcn_id < I40IW_MAX_STATS_COUNT)
  vsi->dev->fcn_id_array[fcn_id] = 0;
 i40iw_hw_stats_stop_timer(vsi);
}
