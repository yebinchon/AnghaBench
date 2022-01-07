
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {unsigned int hdisplay; unsigned int hsync_start; int hsync_end; unsigned int htotal; unsigned int vdisplay; unsigned int vsync_start; int vsync_end; unsigned int vtotal; unsigned int clock; int flags; } ;
struct drm_device {int dummy; } ;


 int DRM_MODE_FLAG_INTERLACE ;
 int DRM_MODE_FLAG_NHSYNC ;
 int DRM_MODE_FLAG_NVSYNC ;
 int DRM_MODE_FLAG_PHSYNC ;
 int DRM_MODE_FLAG_PVSYNC ;
 int GTF_CELL_GRAN ;
 int GTF_C_PRIME ;
 unsigned int GTF_MARGIN_PERCENTAGE ;
 unsigned int GTF_MIN_V_PORCH ;
 int GTF_M_PRIME ;
 unsigned int H_SYNC_PERCENT ;
 unsigned int MIN_VSYNC_PLUS_BP ;
 int V_SYNC_RQD ;
 struct drm_display_mode* drm_mode_create (struct drm_device*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;

struct drm_display_mode *
drm_gtf_mode_complex(struct drm_device *dev, int hdisplay, int vdisplay,
       int vrefresh, bool interlaced, int margins,
       int GTF_M, int GTF_2C, int GTF_K, int GTF_2J)
{
 struct drm_display_mode *drm_mode;
 unsigned int hdisplay_rnd, vdisplay_rnd, vfieldrate_rqd;
 int top_margin, bottom_margin;
 int interlace;
 unsigned int hfreq_est;
 int vsync_plus_bp, vback_porch;
 unsigned int vtotal_lines, vfieldrate_est, hperiod;
 unsigned int vfield_rate, vframe_rate;
 int left_margin, right_margin;
 unsigned int total_active_pixels, ideal_duty_cycle;
 unsigned int hblank, total_pixels, pixel_freq;
 int hsync, hfront_porch, vodd_front_porch_lines;
 unsigned int tmp1, tmp2;

 if (!hdisplay || !vdisplay)
  return ((void*)0);

 drm_mode = drm_mode_create(dev);
 if (!drm_mode)
  return ((void*)0);






 hdisplay_rnd = (hdisplay + 8 / 2) / 8;
 hdisplay_rnd = hdisplay_rnd * 8;





 if (interlaced)
  vdisplay_rnd = vdisplay / 2;
 else
  vdisplay_rnd = vdisplay;


 if (interlaced)
  vfieldrate_rqd = vrefresh * 2;
 else
  vfieldrate_rqd = vrefresh;


 top_margin = 0;
 if (margins)
  top_margin = (vdisplay_rnd * 18 + 500) /
    1000;

 bottom_margin = top_margin;


 if (interlaced)
  interlace = 1;
 else
  interlace = 0;


 {
  tmp1 = (1000000 - 550 * vfieldrate_rqd) / 500;
  tmp2 = (vdisplay_rnd + 2 * top_margin + 1) *
    2 + interlace;
  hfreq_est = (tmp2 * 1000 * vfieldrate_rqd) / tmp1;
 }



 vsync_plus_bp = 550 * hfreq_est / 1000;
 vsync_plus_bp = (vsync_plus_bp + 500) / 1000;

 vback_porch = vsync_plus_bp - 3;

 vtotal_lines = vdisplay_rnd + top_margin + bottom_margin +
   vsync_plus_bp + 1;

 vfieldrate_est = hfreq_est / vtotal_lines;

 hperiod = 1000000 / (vfieldrate_rqd * vtotal_lines);


 vfield_rate = hfreq_est / vtotal_lines;

 if (interlaced)
  vframe_rate = vfield_rate / 2;
 else
  vframe_rate = vfield_rate;

 if (margins)
  left_margin = (hdisplay_rnd * 18 + 500) /
    1000;
 else
  left_margin = 0;


 right_margin = left_margin;

 total_active_pixels = hdisplay_rnd + left_margin + right_margin;

 ideal_duty_cycle = ((((GTF_2C - GTF_2J) * GTF_K / 256) + GTF_2J) / 2) * 1000 -
    ((GTF_K * GTF_M / 256) * 1000000 / hfreq_est);


 hblank = total_active_pixels * ideal_duty_cycle /
   (100000 - ideal_duty_cycle);
 hblank = (hblank + 8) / (2 * 8);
 hblank = hblank * 2 * 8;

 total_pixels = total_active_pixels + hblank;

 pixel_freq = total_pixels * hfreq_est / 1000;





 hsync = 8 * total_pixels / 100;
 hsync = (hsync + 8 / 2) / 8;
 hsync = hsync * 8;

 hfront_porch = hblank / 2 - hsync;

 vodd_front_porch_lines = 1 ;


 drm_mode->hdisplay = hdisplay_rnd;
 drm_mode->hsync_start = hdisplay_rnd + hfront_porch;
 drm_mode->hsync_end = drm_mode->hsync_start + hsync;
 drm_mode->htotal = total_pixels;
 drm_mode->vdisplay = vdisplay_rnd;
 drm_mode->vsync_start = vdisplay_rnd + vodd_front_porch_lines;
 drm_mode->vsync_end = drm_mode->vsync_start + 3;
 drm_mode->vtotal = vtotal_lines;

 drm_mode->clock = pixel_freq;

 if (interlaced) {
  drm_mode->vtotal *= 2;
  drm_mode->flags |= DRM_MODE_FLAG_INTERLACE;
 }

 drm_mode_set_name(drm_mode);
 if (GTF_M == 600 && GTF_2C == 80 && GTF_K == 128 && GTF_2J == 40)
  drm_mode->flags = DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC;
 else
  drm_mode->flags = DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC;

 return drm_mode;
}
