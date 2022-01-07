
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_sw {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int gf100_sw ;
 int nvkm_sw_new_ (int *,struct nvkm_device*,int,struct nvkm_sw**) ;

int
gf100_sw_new(struct nvkm_device *device, int index, struct nvkm_sw **psw)
{
 return nvkm_sw_new_(&gf100_sw, device, index, psw);
}
