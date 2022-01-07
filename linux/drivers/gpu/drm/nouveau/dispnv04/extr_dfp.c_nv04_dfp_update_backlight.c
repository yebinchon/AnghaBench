
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nvif_object {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {TYPE_3__* pdev; } ;
struct TYPE_5__ {struct nvif_object object; } ;
struct TYPE_6__ {TYPE_1__ device; } ;
struct TYPE_8__ {TYPE_2__ client; } ;
struct TYPE_7__ {int device; } ;


 int DRM_MODE_DPMS_ON ;
 int NV_PBUS_DEBUG_DUALHEAD_CTL ;
 int NV_PCRTC_GPIO_EXT ;
 TYPE_4__* nouveau_drm (struct drm_device*) ;
 int nvif_mask (struct nvif_object*,int ,int,int) ;

__attribute__((used)) static void nv04_dfp_update_backlight(struct drm_encoder *encoder, int mode)
{
}
