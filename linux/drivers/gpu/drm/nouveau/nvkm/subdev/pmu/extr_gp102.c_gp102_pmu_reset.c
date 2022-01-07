
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_pmu {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_mask (struct nvkm_device*,int,int,int) ;

__attribute__((used)) static void
gp102_pmu_reset(struct nvkm_pmu *pmu)
{
 struct nvkm_device *device = pmu->subdev.device;
 nvkm_mask(device, 0x10a3c0, 0x00000001, 0x00000001);
 nvkm_mask(device, 0x10a3c0, 0x00000001, 0x00000000);
}
