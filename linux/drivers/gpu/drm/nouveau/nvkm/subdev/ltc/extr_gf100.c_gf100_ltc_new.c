
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_ltc {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int gf100_ltc ;
 int nvkm_ltc_new_ (int *,struct nvkm_device*,int,struct nvkm_ltc**) ;

int
gf100_ltc_new(struct nvkm_device *device, int index, struct nvkm_ltc **pltc)
{
 return nvkm_ltc_new_(&gf100_ltc, device, index, pltc);
}
