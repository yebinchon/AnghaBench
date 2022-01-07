
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_rgb {int encoder; int bridge; } ;


 int drm_encoder_cleanup (int *) ;
 int drm_panel_bridge_remove (int ) ;

void rockchip_rgb_fini(struct rockchip_rgb *rgb)
{
 drm_panel_bridge_remove(rgb->bridge);
 drm_encoder_cleanup(&rgb->encoder);
}
