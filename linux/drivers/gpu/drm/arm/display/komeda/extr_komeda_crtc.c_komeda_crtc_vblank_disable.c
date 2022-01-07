
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct komeda_dev {TYPE_2__* funcs; } ;
struct komeda_crtc {TYPE_3__* master; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_6__ {int id; } ;
struct TYPE_5__ {int (* on_off_vblank ) (struct komeda_dev*,int ,int) ;} ;
struct TYPE_4__ {struct komeda_dev* dev_private; } ;


 int stub1 (struct komeda_dev*,int ,int) ;
 struct komeda_crtc* to_kcrtc (struct drm_crtc*) ;

__attribute__((used)) static void komeda_crtc_vblank_disable(struct drm_crtc *crtc)
{
 struct komeda_dev *mdev = crtc->dev->dev_private;
 struct komeda_crtc *kcrtc = to_kcrtc(crtc);

 mdev->funcs->on_off_vblank(mdev, kcrtc->master->id, 0);
}
