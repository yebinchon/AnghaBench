
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {int lid_timer; } ;


 int del_timer_sync (int *) ;

void psb_lid_timer_takedown(struct drm_psb_private *dev_priv)
{
 del_timer_sync(&dev_priv->lid_timer);
}
