
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct drm_display_mode {int crtc_htotal; int crtc_hsync_start; int crtc_hdisplay; int crtc_vtotal; int crtc_vsync_start; int crtc_vdisplay; int crtc_hsync_end; int hdisplay; int crtc_vsync_end; int clock; } ;


 char* udl_set_register_16 (char*,int,int) ;
 char* udl_set_register_16be (char*,int,int) ;
 char* udl_set_register_lfsr16 (char*,int,int) ;

__attribute__((used)) static char *udl_set_vid_cmds(char *wrptr, struct drm_display_mode *mode)
{
 u16 xds, yds;
 u16 xde, yde;
 u16 yec;


 xds = mode->crtc_htotal - mode->crtc_hsync_start;
 wrptr = udl_set_register_lfsr16(wrptr, 0x01, xds);

 xde = xds + mode->crtc_hdisplay;
 wrptr = udl_set_register_lfsr16(wrptr, 0x03, xde);


 yds = mode->crtc_vtotal - mode->crtc_vsync_start;
 wrptr = udl_set_register_lfsr16(wrptr, 0x05, yds);

 yde = yds + mode->crtc_vdisplay;
 wrptr = udl_set_register_lfsr16(wrptr, 0x07, yde);


 wrptr = udl_set_register_lfsr16(wrptr, 0x09,
     mode->crtc_htotal - 1);


 wrptr = udl_set_register_lfsr16(wrptr, 0x0B, 1);


 wrptr = udl_set_register_lfsr16(wrptr, 0x0D,
     mode->crtc_hsync_end - mode->crtc_hsync_start + 1);


 wrptr = udl_set_register_16(wrptr, 0x0F, mode->hdisplay);


 yec = mode->crtc_vtotal;
 wrptr = udl_set_register_lfsr16(wrptr, 0x11, yec);


 wrptr = udl_set_register_lfsr16(wrptr, 0x13, 0);


 wrptr = udl_set_register_lfsr16(wrptr, 0x15, mode->crtc_vsync_end - mode->crtc_vsync_start);


 wrptr = udl_set_register_16(wrptr, 0x17, mode->crtc_vdisplay);

 wrptr = udl_set_register_16be(wrptr, 0x1B,
          mode->clock / 5);

 return wrptr;
}
