
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ I915_FORMAT_MOD_Y_TILED_CCS ;
 scalar_t__ I915_FORMAT_MOD_Yf_TILED_CCS ;

bool is_ccs_modifier(u64 modifier)
{
 return modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
        modifier == I915_FORMAT_MOD_Yf_TILED_CCS;
}
