
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_power_well {TYPE_2__* desc; } ;
struct drm_i915_private {int dummy; } ;
typedef enum aux_ch { ____Placeholder_aux_ch } aux_ch ;
struct TYPE_3__ {int idx; scalar_t__ is_tc_tbt; } ;
struct TYPE_4__ {TYPE_1__ hsw; } ;


 int ICL_AUX_PW_TO_CH (int) ;
 int ICL_TBT_AUX_PW_TO_CH (int) ;

__attribute__((used)) static enum aux_ch icl_tc_phy_aux_ch(struct drm_i915_private *dev_priv,
         struct i915_power_well *power_well)
{
 int pw_idx = power_well->desc->hsw.idx;

 return power_well->desc->hsw.is_tc_tbt ? ICL_TBT_AUX_PW_TO_CH(pw_idx) :
       ICL_AUX_PW_TO_CH(pw_idx);
}
