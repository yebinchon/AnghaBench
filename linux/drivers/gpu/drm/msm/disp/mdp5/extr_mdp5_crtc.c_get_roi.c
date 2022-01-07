
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ x; scalar_t__ width; scalar_t__ y; scalar_t__ height; } ;
struct mdp5_crtc {TYPE_2__ cursor; } ;
struct TYPE_3__ {scalar_t__ hdisplay; scalar_t__ vdisplay; } ;
struct drm_crtc {TYPE_1__ mode; } ;


 scalar_t__ abs (scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 struct mdp5_crtc* to_mdp5_crtc (struct drm_crtc*) ;

__attribute__((used)) static void get_roi(struct drm_crtc *crtc, uint32_t *roi_w, uint32_t *roi_h)
{
 struct mdp5_crtc *mdp5_crtc = to_mdp5_crtc(crtc);
 uint32_t xres = crtc->mode.hdisplay;
 uint32_t yres = crtc->mode.vdisplay;
 if (mdp5_crtc->cursor.x >= 0)
  *roi_w = min(mdp5_crtc->cursor.width, xres -
   mdp5_crtc->cursor.x);
 else
  *roi_w = mdp5_crtc->cursor.width - abs(mdp5_crtc->cursor.x);
 if (mdp5_crtc->cursor.y >= 0)
  *roi_h = min(mdp5_crtc->cursor.height, yres -
   mdp5_crtc->cursor.y);
 else
  *roi_h = mdp5_crtc->cursor.height - abs(mdp5_crtc->cursor.y);
}
