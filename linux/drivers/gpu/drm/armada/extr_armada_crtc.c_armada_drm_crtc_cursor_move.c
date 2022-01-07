
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_crtc {int dummy; } ;
struct armada_crtc {int cursor_x; int cursor_y; TYPE_1__* variant; } ;
struct TYPE_2__ {int has_spu_adv_reg; } ;


 int EFAULT ;
 int armada_drm_crtc_cursor_update (struct armada_crtc*,int) ;
 struct armada_crtc* drm_to_armada_crtc (struct drm_crtc*) ;

__attribute__((used)) static int armada_drm_crtc_cursor_move(struct drm_crtc *crtc, int x, int y)
{
 struct armada_crtc *dcrtc = drm_to_armada_crtc(crtc);
 int ret;


 if (!dcrtc->variant->has_spu_adv_reg)
  return -EFAULT;

 dcrtc->cursor_x = x;
 dcrtc->cursor_y = y;
 ret = armada_drm_crtc_cursor_update(dcrtc, 0);

 return ret;
}
