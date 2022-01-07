
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_timer {struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;


 int NV04_PTIMER_TIME_0 ;
 int NV04_PTIMER_TIME_1 ;
 int lower_32_bits (int ) ;
 int nvkm_debug (struct nvkm_subdev*,char*,int ) ;
 int nvkm_wr32 (struct nvkm_device*,int ,int ) ;
 int upper_32_bits (int ) ;

void
nv04_timer_time(struct nvkm_timer *tmr, u64 time)
{
 struct nvkm_subdev *subdev = &tmr->subdev;
 struct nvkm_device *device = subdev->device;
 u32 hi = upper_32_bits(time);
 u32 lo = lower_32_bits(time);

 nvkm_debug(subdev, "time low        : %08x\n", lo);
 nvkm_debug(subdev, "time high       : %08x\n", hi);

 nvkm_wr32(device, NV04_PTIMER_TIME_1, hi);
 nvkm_wr32(device, NV04_PTIMER_TIME_0, lo);
}
