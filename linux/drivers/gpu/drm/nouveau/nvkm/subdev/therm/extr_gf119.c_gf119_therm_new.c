
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_therm {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int gf119_therm ;
 int nvkm_therm_new_ (int *,struct nvkm_device*,int,struct nvkm_therm**) ;

int
gf119_therm_new(struct nvkm_device *device, int index,
        struct nvkm_therm **ptherm)
{
 return nvkm_therm_new_(&gf119_therm, device, index, ptherm);
}
