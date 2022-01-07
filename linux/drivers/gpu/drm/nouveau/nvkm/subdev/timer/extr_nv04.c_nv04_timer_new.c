
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_timer {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int nv04_timer ;
 int nvkm_timer_new_ (int *,struct nvkm_device*,int,struct nvkm_timer**) ;

int
nv04_timer_new(struct nvkm_device *device, int index, struct nvkm_timer **ptmr)
{
 return nvkm_timer_new_(&nv04_timer, device, index, ptmr);
}
