
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shmob_drm_device {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {struct shmob_drm_device* dev_private; } ;


 int shmob_drm_crtc_enable_vblank (struct shmob_drm_device*,int) ;

__attribute__((used)) static void shmob_drm_disable_vblank(struct drm_crtc *crtc)
{
 struct shmob_drm_device *sdev = crtc->dev->dev_private;

 shmob_drm_crtc_enable_vblank(sdev, 0);
}
