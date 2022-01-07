
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct malidp_hw_device {TYPE_3__* hw; } ;
struct malidp_drm {struct malidp_hw_device* dev; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_4__ {int vsync_irq; } ;
struct TYPE_5__ {TYPE_1__ de_irq_map; } ;
struct TYPE_6__ {TYPE_2__ map; } ;


 int MALIDP_DE_BLOCK ;
 struct malidp_drm* crtc_to_malidp_device (struct drm_crtc*) ;
 int malidp_hw_enable_irq (struct malidp_hw_device*,int ,int ) ;

__attribute__((used)) static int malidp_crtc_enable_vblank(struct drm_crtc *crtc)
{
 struct malidp_drm *malidp = crtc_to_malidp_device(crtc);
 struct malidp_hw_device *hwdev = malidp->dev;

 malidp_hw_enable_irq(hwdev, MALIDP_DE_BLOCK,
        hwdev->hw->map.de_irq_map.vsync_irq);
 return 0;
}
