
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {int dummy; } ;
struct drm_display_mode {int htotal; int hsync_end; int hsync_start; int hdisplay; int vtotal; int vdisplay; } ;
struct cirrus_device {int cpp; int pitch; } ;


 int CL_CRT1A ;
 int VGA_CRTC_H_DISP ;
 int VGA_CRTC_H_SYNC_END ;
 int VGA_CRTC_H_SYNC_START ;
 int VGA_CRTC_H_TOTAL ;
 int VGA_CRTC_MAX_SCAN ;
 int VGA_CRTC_MODE ;
 int VGA_CRTC_OFFSET ;
 int VGA_CRTC_OVERFLOW ;
 int VGA_CRTC_V_DISP_END ;
 int VGA_CRTC_V_SYNC_END ;
 int VGA_CRTC_V_TOTAL ;
 int VGA_GFX_MISC ;
 int VGA_GFX_MODE ;
 int cirrus_cpp (struct drm_framebuffer*) ;
 int cirrus_pitch (struct drm_framebuffer*) ;
 int cirrus_set_start_address (struct cirrus_device*,int ) ;
 int outb (int,int) ;
 int rreg_seq (struct cirrus_device*,int) ;
 int wreg_crt (struct cirrus_device*,int,int) ;
 int wreg_gfx (struct cirrus_device*,int ,int) ;
 int wreg_hdr (struct cirrus_device*,int) ;
 int wreg_seq (struct cirrus_device*,int,int) ;

__attribute__((used)) static int cirrus_mode_set(struct cirrus_device *cirrus,
      struct drm_display_mode *mode,
      struct drm_framebuffer *fb)
{
 int hsyncstart, hsyncend, htotal, hdispend;
 int vtotal, vdispend;
 int tmp;
 int sr07 = 0, hdr = 0;

 htotal = mode->htotal / 8;
 hsyncend = mode->hsync_end / 8;
 hsyncstart = mode->hsync_start / 8;
 hdispend = mode->hdisplay / 8;

 vtotal = mode->vtotal;
 vdispend = mode->vdisplay;

 vdispend -= 1;
 vtotal -= 2;

 htotal -= 5;
 hdispend -= 1;
 hsyncstart += 1;
 hsyncend += 1;

 wreg_crt(cirrus, VGA_CRTC_V_SYNC_END, 0x20);
 wreg_crt(cirrus, VGA_CRTC_H_TOTAL, htotal);
 wreg_crt(cirrus, VGA_CRTC_H_DISP, hdispend);
 wreg_crt(cirrus, VGA_CRTC_H_SYNC_START, hsyncstart);
 wreg_crt(cirrus, VGA_CRTC_H_SYNC_END, hsyncend);
 wreg_crt(cirrus, VGA_CRTC_V_TOTAL, vtotal & 0xff);
 wreg_crt(cirrus, VGA_CRTC_V_DISP_END, vdispend & 0xff);

 tmp = 0x40;
 if ((vdispend + 1) & 512)
  tmp |= 0x20;
 wreg_crt(cirrus, VGA_CRTC_MAX_SCAN, tmp);




 tmp = 0x10;
 if (vtotal & 0x100)
  tmp |= 0x01;
 if (vdispend & 0x100)
  tmp |= 0x02;
 if ((vdispend + 1) & 0x100)
  tmp |= 0x08;
 if (vtotal & 0x200)
  tmp |= 0x20;
 if (vdispend & 0x200)
  tmp |= 0x40;
 wreg_crt(cirrus, VGA_CRTC_OVERFLOW, tmp);

 tmp = 0;



 if ((htotal + 5) & 0x40)
  tmp |= 0x10;
 if ((htotal + 5) & 0x80)
  tmp |= 0x20;
 if (vtotal & 0x100)
  tmp |= 0x40;
 if (vtotal & 0x200)
  tmp |= 0x80;

 wreg_crt(cirrus, CL_CRT1A, tmp);


 wreg_crt(cirrus, VGA_CRTC_MODE, 0x03);

 sr07 = rreg_seq(cirrus, 0x07);
 sr07 &= 0xe0;
 hdr = 0;

 cirrus->cpp = cirrus_cpp(fb);
 switch (cirrus->cpp * 8) {
 case 8:
  sr07 |= 0x11;
  break;
 case 16:
  sr07 |= 0x17;
  hdr = 0xc1;
  break;
 case 24:
  sr07 |= 0x15;
  hdr = 0xc5;
  break;
 case 32:
  sr07 |= 0x19;
  hdr = 0xc5;
  break;
 default:
  return -1;
 }

 wreg_seq(cirrus, 0x7, sr07);


 cirrus->pitch = cirrus_pitch(fb);
 tmp = cirrus->pitch / 8;
 wreg_crt(cirrus, VGA_CRTC_OFFSET, tmp);


 tmp = 0x22;
 tmp |= (cirrus->pitch >> 7) & 0x10;
 tmp |= (cirrus->pitch >> 6) & 0x40;
 wreg_crt(cirrus, 0x1b, tmp);


 wreg_gfx(cirrus, VGA_GFX_MODE, 0x40);


 wreg_gfx(cirrus, VGA_GFX_MISC, 0x01);

 wreg_hdr(cirrus, hdr);

 cirrus_set_start_address(cirrus, 0);


 outb(0x20, 0x3c0);
 return 0;
}
