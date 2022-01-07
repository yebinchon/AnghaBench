
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_therm {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int gm200_therm ;
 int nvkm_therm_new_ (int *,struct nvkm_device*,int,struct nvkm_therm**) ;

int
gm200_therm_new(struct nvkm_device *device, int index,
  struct nvkm_therm **ptherm)
{
 return nvkm_therm_new_(&gm200_therm, device, index, ptherm);
}
