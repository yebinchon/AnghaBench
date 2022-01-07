
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int cs_setup; int write_setup; int write_cycle; int write_strobe; int read_latch; int read_setup; int read_cycle; int read_strobe; scalar_t__ vsync_dir_input; scalar_t__ vsync_active_high; } ;
struct shmob_drm_interface_data {int flags; scalar_t__ interface; TYPE_3__ sys; } ;
struct shmob_drm_device {int ldmt1r; TYPE_2__* pdata; } ;
struct drm_display_mode {int flags; int hdisplay; int htotal; int hsync_end; int hsync_start; int vdisplay; int vtotal; int vsync_end; int vsync_start; } ;
struct drm_crtc {struct drm_display_mode mode; TYPE_1__* dev; } ;
struct shmob_drm_crtc {struct drm_crtc crtc; } ;
struct TYPE_5__ {struct shmob_drm_interface_data iface; } ;
struct TYPE_4__ {struct shmob_drm_device* dev_private; } ;


 int DRM_MODE_FLAG_PHSYNC ;
 int DRM_MODE_FLAG_PVSYNC ;
 int LDHAJR ;
 int LDHCNR ;
 int LDHSYNR ;
 int LDMT1R ;
 int LDMT1R_DAPOL ;
 int LDMT1R_DIPOL ;
 int LDMT1R_DWCNT ;
 int LDMT1R_DWPOL ;
 int LDMT1R_HPOL ;
 int LDMT1R_HSCNT ;
 int LDMT1R_VPOL ;
 int LDMT2R ;
 int LDMT2R_CSUP_SHIFT ;
 int LDMT2R_RSV ;
 int LDMT2R_VSEL ;
 int LDMT2R_WCEC_SHIFT ;
 int LDMT2R_WCLW_SHIFT ;
 int LDMT2R_WCSC_SHIFT ;
 int LDMT3R ;
 int LDMT3R_RCEC_SHIFT ;
 int LDMT3R_RCLW_SHIFT ;
 int LDMT3R_RCSC_SHIFT ;
 int LDMT3R_RDLC_SHIFT ;
 int LDVLNR ;
 int LDVSYNR ;
 int SHMOB_DRM_IFACE_FL_DAPOL ;
 int SHMOB_DRM_IFACE_FL_DIPOL ;
 int SHMOB_DRM_IFACE_FL_DWCNT ;
 int SHMOB_DRM_IFACE_FL_DWPOL ;
 int SHMOB_DRM_IFACE_FL_HSCNT ;
 scalar_t__ SHMOB_DRM_IFACE_SYS24 ;
 scalar_t__ SHMOB_DRM_IFACE_SYS8A ;
 int lcdc_write (struct shmob_drm_device*,int ,int) ;

__attribute__((used)) static void shmob_drm_crtc_setup_geometry(struct shmob_drm_crtc *scrtc)
{
 struct drm_crtc *crtc = &scrtc->crtc;
 struct shmob_drm_device *sdev = crtc->dev->dev_private;
 const struct shmob_drm_interface_data *idata = &sdev->pdata->iface;
 const struct drm_display_mode *mode = &crtc->mode;
 u32 value;

 value = sdev->ldmt1r
       | ((mode->flags & DRM_MODE_FLAG_PVSYNC) ? 0 : LDMT1R_VPOL)
       | ((mode->flags & DRM_MODE_FLAG_PHSYNC) ? 0 : LDMT1R_HPOL)
       | ((idata->flags & SHMOB_DRM_IFACE_FL_DWPOL) ? LDMT1R_DWPOL : 0)
       | ((idata->flags & SHMOB_DRM_IFACE_FL_DIPOL) ? LDMT1R_DIPOL : 0)
       | ((idata->flags & SHMOB_DRM_IFACE_FL_DAPOL) ? LDMT1R_DAPOL : 0)
       | ((idata->flags & SHMOB_DRM_IFACE_FL_HSCNT) ? LDMT1R_HSCNT : 0)
       | ((idata->flags & SHMOB_DRM_IFACE_FL_DWCNT) ? LDMT1R_DWCNT : 0);
 lcdc_write(sdev, LDMT1R, value);

 if (idata->interface >= SHMOB_DRM_IFACE_SYS8A &&
     idata->interface <= SHMOB_DRM_IFACE_SYS24) {

  value = (idata->sys.cs_setup << LDMT2R_CSUP_SHIFT)
        | (idata->sys.vsync_active_high ? LDMT2R_RSV : 0)
        | (idata->sys.vsync_dir_input ? LDMT2R_VSEL : 0)
        | (idata->sys.write_setup << LDMT2R_WCSC_SHIFT)
        | (idata->sys.write_cycle << LDMT2R_WCEC_SHIFT)
        | (idata->sys.write_strobe << LDMT2R_WCLW_SHIFT);
  lcdc_write(sdev, LDMT2R, value);

  value = (idata->sys.read_latch << LDMT3R_RDLC_SHIFT)
        | (idata->sys.read_setup << LDMT3R_RCSC_SHIFT)
        | (idata->sys.read_cycle << LDMT3R_RCEC_SHIFT)
        | (idata->sys.read_strobe << LDMT3R_RCLW_SHIFT);
  lcdc_write(sdev, LDMT3R, value);
 }

 value = ((mode->hdisplay / 8) << 16)
       | (mode->htotal / 8);
 lcdc_write(sdev, LDHCNR, value);

 value = (((mode->hsync_end - mode->hsync_start) / 8) << 16)
       | (mode->hsync_start / 8);
 lcdc_write(sdev, LDHSYNR, value);

 value = ((mode->hdisplay & 7) << 24) | ((mode->htotal & 7) << 16)
       | (((mode->hsync_end - mode->hsync_start) & 7) << 8)
       | (mode->hsync_start & 7);
 lcdc_write(sdev, LDHAJR, value);

 value = ((mode->vdisplay) << 16)
       | mode->vtotal;
 lcdc_write(sdev, LDVLNR, value);

 value = ((mode->vsync_end - mode->vsync_start) << 16)
       | mode->vsync_start;
 lcdc_write(sdev, LDVSYNR, value);
}
