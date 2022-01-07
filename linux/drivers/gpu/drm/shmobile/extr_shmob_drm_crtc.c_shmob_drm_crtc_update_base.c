
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct shmob_drm_device {int dummy; } ;
struct drm_crtc {int y; int x; TYPE_2__* dev; } ;
struct shmob_drm_crtc {int * dma; TYPE_1__* format; struct drm_crtc crtc; } ;
struct TYPE_4__ {struct shmob_drm_device* dev_private; } ;
struct TYPE_3__ {scalar_t__ yuv; } ;


 int LDRCNTR ;
 int LDRCNTR_MRS ;
 int LDSA1R ;
 int LDSA2R ;
 int lcdc_read (struct shmob_drm_device*,int ) ;
 int lcdc_write (struct shmob_drm_device*,int ,int) ;
 int lcdc_write_mirror (struct shmob_drm_device*,int ,int ) ;
 int shmob_drm_crtc_compute_base (struct shmob_drm_crtc*,int ,int ) ;

__attribute__((used)) static void shmob_drm_crtc_update_base(struct shmob_drm_crtc *scrtc)
{
 struct drm_crtc *crtc = &scrtc->crtc;
 struct shmob_drm_device *sdev = crtc->dev->dev_private;

 shmob_drm_crtc_compute_base(scrtc, crtc->x, crtc->y);

 lcdc_write_mirror(sdev, LDSA1R, scrtc->dma[0]);
 if (scrtc->format->yuv)
  lcdc_write_mirror(sdev, LDSA2R, scrtc->dma[1]);

 lcdc_write(sdev, LDRCNTR, lcdc_read(sdev, LDRCNTR) ^ LDRCNTR_MRS);
}
