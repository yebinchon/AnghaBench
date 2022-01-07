
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_modeinfo {scalar_t__ hdisplay; scalar_t__ hsync_start; scalar_t__ hsync_end; scalar_t__ htotal; scalar_t__ hskew; scalar_t__ vdisplay; scalar_t__ vsync_start; scalar_t__ vsync_end; scalar_t__ vtotal; scalar_t__ vscan; scalar_t__* name; int flags; int type; int vrefresh; int clock; } ;
struct drm_display_mode {scalar_t__ hdisplay; scalar_t__ hsync_start; scalar_t__ hsync_end; scalar_t__ htotal; scalar_t__ hskew; scalar_t__ vdisplay; scalar_t__ vsync_start; scalar_t__ vsync_end; scalar_t__ vtotal; scalar_t__ vscan; int picture_aspect_ratio; int name; int type; int flags; int vrefresh; int clock; } ;


 int DRM_DISPLAY_MODE_LEN ;
 int DRM_MODE_FLAG_PIC_AR_16_9 ;
 int DRM_MODE_FLAG_PIC_AR_256_135 ;
 int DRM_MODE_FLAG_PIC_AR_4_3 ;
 int DRM_MODE_FLAG_PIC_AR_64_27 ;
 int DRM_MODE_FLAG_PIC_AR_NONE ;





 scalar_t__ USHRT_MAX ;
 int WARN (int,char*,...) ;
 int strncpy (scalar_t__*,int ,int) ;

void drm_mode_convert_to_umode(struct drm_mode_modeinfo *out,
          const struct drm_display_mode *in)
{
 WARN(in->hdisplay > USHRT_MAX || in->hsync_start > USHRT_MAX ||
      in->hsync_end > USHRT_MAX || in->htotal > USHRT_MAX ||
      in->hskew > USHRT_MAX || in->vdisplay > USHRT_MAX ||
      in->vsync_start > USHRT_MAX || in->vsync_end > USHRT_MAX ||
      in->vtotal > USHRT_MAX || in->vscan > USHRT_MAX,
      "timing values too large for mode info\n");

 out->clock = in->clock;
 out->hdisplay = in->hdisplay;
 out->hsync_start = in->hsync_start;
 out->hsync_end = in->hsync_end;
 out->htotal = in->htotal;
 out->hskew = in->hskew;
 out->vdisplay = in->vdisplay;
 out->vsync_start = in->vsync_start;
 out->vsync_end = in->vsync_end;
 out->vtotal = in->vtotal;
 out->vscan = in->vscan;
 out->vrefresh = in->vrefresh;
 out->flags = in->flags;
 out->type = in->type;

 switch (in->picture_aspect_ratio) {
 case 130:
  out->flags |= DRM_MODE_FLAG_PIC_AR_4_3;
  break;
 case 132:
  out->flags |= DRM_MODE_FLAG_PIC_AR_16_9;
  break;
 case 129:
  out->flags |= DRM_MODE_FLAG_PIC_AR_64_27;
  break;
 case 131:
  out->flags |= DRM_MODE_FLAG_PIC_AR_256_135;
  break;
 default:
  WARN(1, "Invalid aspect ratio (0%x) on mode\n",
       in->picture_aspect_ratio);

 case 128:
  out->flags |= DRM_MODE_FLAG_PIC_AR_NONE;
  break;
 }

 strncpy(out->name, in->name, DRM_DISPLAY_MODE_LEN);
 out->name[DRM_DISPLAY_MODE_LEN-1] = 0;
}
