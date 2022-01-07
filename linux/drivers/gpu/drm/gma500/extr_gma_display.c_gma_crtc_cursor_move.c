
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gma_crtc {int pipe; int cursor_addr; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int CURABASE ;
 int CURAPOS ;
 int CURBBASE ;
 int CURBPOS ;
 int CURSOR_POS_MASK ;
 int CURSOR_POS_SIGN ;
 int CURSOR_X_SHIFT ;
 int CURSOR_Y_SHIFT ;
 int REG_WRITE (int ,int) ;
 scalar_t__ gma_power_begin (struct drm_device*,int) ;
 int gma_power_end (struct drm_device*) ;
 struct gma_crtc* to_gma_crtc (struct drm_crtc*) ;

int gma_crtc_cursor_move(struct drm_crtc *crtc, int x, int y)
{
 struct drm_device *dev = crtc->dev;
 struct gma_crtc *gma_crtc = to_gma_crtc(crtc);
 int pipe = gma_crtc->pipe;
 uint32_t temp = 0;
 uint32_t addr;

 if (x < 0) {
  temp |= (CURSOR_POS_SIGN << CURSOR_X_SHIFT);
  x = -x;
 }
 if (y < 0) {
  temp |= (CURSOR_POS_SIGN << CURSOR_Y_SHIFT);
  y = -y;
 }

 temp |= ((x & CURSOR_POS_MASK) << CURSOR_X_SHIFT);
 temp |= ((y & CURSOR_POS_MASK) << CURSOR_Y_SHIFT);

 addr = gma_crtc->cursor_addr;

 if (gma_power_begin(dev, 0)) {
  REG_WRITE((pipe == 0) ? CURAPOS : CURBPOS, temp);
  REG_WRITE((pipe == 0) ? CURABASE : CURBBASE, addr);
  gma_power_end(dev);
 }
 return 0;
}
