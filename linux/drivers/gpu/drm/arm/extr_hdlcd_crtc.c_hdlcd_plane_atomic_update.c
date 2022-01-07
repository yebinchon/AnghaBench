
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct hdlcd_drm_private {int dummy; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {TYPE_1__* dev; TYPE_2__* state; } ;
struct drm_framebuffer {scalar_t__* pitches; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_4__ {int dst; struct drm_framebuffer* fb; } ;
struct TYPE_3__ {struct hdlcd_drm_private* dev_private; } ;


 int HDLCD_REG_FB_BASE ;
 int HDLCD_REG_FB_LINE_COUNT ;
 int HDLCD_REG_FB_LINE_LENGTH ;
 int HDLCD_REG_FB_LINE_PITCH ;
 scalar_t__ drm_fb_cma_get_gem_addr (struct drm_framebuffer*,TYPE_2__*,int ) ;
 scalar_t__ drm_rect_height (int *) ;
 int hdlcd_write (struct hdlcd_drm_private*,int ,scalar_t__) ;

__attribute__((used)) static void hdlcd_plane_atomic_update(struct drm_plane *plane,
          struct drm_plane_state *state)
{
 struct drm_framebuffer *fb = plane->state->fb;
 struct hdlcd_drm_private *hdlcd;
 u32 dest_h;
 dma_addr_t scanout_start;

 if (!fb)
  return;

 dest_h = drm_rect_height(&plane->state->dst);
 scanout_start = drm_fb_cma_get_gem_addr(fb, plane->state, 0);

 hdlcd = plane->dev->dev_private;
 hdlcd_write(hdlcd, HDLCD_REG_FB_LINE_LENGTH, fb->pitches[0]);
 hdlcd_write(hdlcd, HDLCD_REG_FB_LINE_PITCH, fb->pitches[0]);
 hdlcd_write(hdlcd, HDLCD_REG_FB_LINE_COUNT, dest_h - 1);
 hdlcd_write(hdlcd, HDLCD_REG_FB_BASE, scanout_start);
}
