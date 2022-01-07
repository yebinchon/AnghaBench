
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int irqmask; } ;
struct mdp4_crtc {TYPE_1__ vblank; } ;
struct drm_crtc {int dummy; } ;


 struct mdp4_crtc* to_mdp4_crtc (struct drm_crtc*) ;

uint32_t mdp4_crtc_vblank(struct drm_crtc *crtc)
{
 struct mdp4_crtc *mdp4_crtc = to_mdp4_crtc(crtc);
 return mdp4_crtc->vblank.irqmask;
}
