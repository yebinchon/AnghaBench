
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ltdc_device {int regs; } ;
struct drm_plane_state {TYPE_2__* crtc; } ;
struct TYPE_6__ {int id; } ;
struct drm_plane {int index; TYPE_3__ base; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ base; } ;


 int DRM_DEBUG_DRIVER (char*,int ,int ) ;
 int LAY_OFS ;
 int LTDC_L1CR ;
 int LXCR_LEN ;
 struct ltdc_device* plane_to_ltdc (struct drm_plane*) ;
 int reg_clear (int ,int,int ) ;

__attribute__((used)) static void ltdc_plane_atomic_disable(struct drm_plane *plane,
          struct drm_plane_state *oldstate)
{
 struct ltdc_device *ldev = plane_to_ltdc(plane);
 u32 lofs = plane->index * LAY_OFS;


 reg_clear(ldev->regs, LTDC_L1CR + lofs, LXCR_LEN);

 DRM_DEBUG_DRIVER("CRTC:%d plane:%d\n",
    oldstate->crtc->base.id, plane->base.id);
}
