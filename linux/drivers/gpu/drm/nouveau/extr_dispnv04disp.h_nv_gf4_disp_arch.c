
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; } ;


 scalar_t__ nv_two_heads (struct drm_device*) ;

__attribute__((used)) static inline bool
nv_gf4_disp_arch(struct drm_device *dev)
{
 return nv_two_heads(dev) && (dev->pdev->device & 0x0ff0) != 0x0110;
}
