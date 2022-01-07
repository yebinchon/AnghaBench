
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct nvif_device {int object; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {struct nvif_device device; } ;
struct TYPE_4__ {TYPE_1__ client; } ;


 TYPE_2__* nouveau_drm (struct drm_device*) ;
 int nvif_wr32 (int *,int ,int ) ;

__attribute__((used)) static inline void nv_write_ptv(struct drm_device *dev, uint32_t reg,
    uint32_t val)
{
 struct nvif_device *device = &nouveau_drm(dev)->client.device;
 nvif_wr32(&device->object, reg, val);
}
