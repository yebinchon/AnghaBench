
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u64 ;
struct vmw_private {scalar_t__ active_display_unit; scalar_t__ vram_size; scalar_t__ prim_bb_mem; } ;


 scalar_t__ vmw_du_screen_target ;

bool vmw_kms_validate_mode_vram(struct vmw_private *dev_priv,
    uint32_t pitch,
    uint32_t height)
{
 return ((u64) pitch * (u64) height) < (u64)
  ((dev_priv->active_display_unit == vmw_du_screen_target) ?
   dev_priv->prim_bb_mem : dev_priv->vram_size);
}
