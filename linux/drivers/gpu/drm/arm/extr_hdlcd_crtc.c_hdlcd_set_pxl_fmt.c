
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_12__ {int offset; int length; } ;
struct TYPE_11__ {int offset; int length; } ;
struct TYPE_10__ {int offset; int length; } ;
struct simplefb_format {int bits_per_pixel; TYPE_6__ blue; TYPE_5__ green; TYPE_4__ red; int fourcc; } ;
struct hdlcd_drm_private {int dummy; } ;
struct drm_framebuffer {TYPE_3__* format; } ;
struct drm_crtc {TYPE_2__* primary; } ;
struct TYPE_9__ {int format; } ;
struct TYPE_8__ {TYPE_1__* state; } ;
struct TYPE_7__ {struct drm_framebuffer* fb; } ;


 int ARRAY_SIZE (struct simplefb_format*) ;
 int HDLCD_REG_BLUE_SELECT ;
 int HDLCD_REG_GREEN_SELECT ;
 int HDLCD_REG_PIXEL_FORMAT ;
 int HDLCD_REG_RED_SELECT ;
 scalar_t__ WARN_ON (int) ;
 struct hdlcd_drm_private* crtc_to_hdlcd_priv (struct drm_crtc*) ;
 int hdlcd_write (struct hdlcd_drm_private*,int ,int) ;
 struct simplefb_format* supported_formats ;

__attribute__((used)) static int hdlcd_set_pxl_fmt(struct drm_crtc *crtc)
{
 unsigned int btpp;
 struct hdlcd_drm_private *hdlcd = crtc_to_hdlcd_priv(crtc);
 const struct drm_framebuffer *fb = crtc->primary->state->fb;
 uint32_t pixel_format;
 struct simplefb_format *format = ((void*)0);
 int i;

 pixel_format = fb->format->format;

 for (i = 0; i < ARRAY_SIZE(supported_formats); i++) {
  if (supported_formats[i].fourcc == pixel_format)
   format = &supported_formats[i];
 }

 if (WARN_ON(!format))
  return 0;


 btpp = (format->bits_per_pixel + 7) / 8;
 hdlcd_write(hdlcd, HDLCD_REG_PIXEL_FORMAT, (btpp - 1) << 3);
 hdlcd_write(hdlcd, HDLCD_REG_RED_SELECT, format->red.offset |



      ((format->red.length & 0xf) << 8));
 hdlcd_write(hdlcd, HDLCD_REG_GREEN_SELECT, format->green.offset |
      ((format->green.length & 0xf) << 8));
 hdlcd_write(hdlcd, HDLCD_REG_BLUE_SELECT, format->blue.offset |
      ((format->blue.length & 0xf) << 8));

 return 0;
}
