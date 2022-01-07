
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shmob_drm_device {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct shmob_drm_crtc {int started; struct drm_crtc crtc; } ;
struct TYPE_2__ {struct shmob_drm_device* dev_private; } ;


 int LDCNT1R ;
 int lcdc_write (struct shmob_drm_device*,int ,int ) ;
 int shmob_drm_clk_off (struct shmob_drm_device*) ;
 int shmob_drm_crtc_start_stop (struct shmob_drm_crtc*,int) ;

__attribute__((used)) static void shmob_drm_crtc_stop(struct shmob_drm_crtc *scrtc)
{
 struct drm_crtc *crtc = &scrtc->crtc;
 struct shmob_drm_device *sdev = crtc->dev->dev_private;

 if (!scrtc->started)
  return;


 shmob_drm_crtc_start_stop(scrtc, 0);


 lcdc_write(sdev, LDCNT1R, 0);


 shmob_drm_clk_off(sdev);

 scrtc->started = 0;
}
