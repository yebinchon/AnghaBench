
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_timer {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int NV04_PTIMER_TIME_0 ;
 int NV04_PTIMER_TIME_1 ;
 scalar_t__ nvkm_rd32 (struct nvkm_device*,int ) ;

u64
nv04_timer_read(struct nvkm_timer *tmr)
{
 struct nvkm_device *device = tmr->subdev.device;
 u32 hi, lo;

 do {
  hi = nvkm_rd32(device, NV04_PTIMER_TIME_1);
  lo = nvkm_rd32(device, NV04_PTIMER_TIME_0);
 } while (hi != nvkm_rd32(device, NV04_PTIMER_TIME_1));

 return ((u64)hi << 32 | lo);
}
