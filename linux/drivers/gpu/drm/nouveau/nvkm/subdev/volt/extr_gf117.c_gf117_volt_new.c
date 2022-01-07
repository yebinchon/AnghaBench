
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_volt {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int gf117_volt ;
 int nvkm_volt_new_ (int *,struct nvkm_device*,int,struct nvkm_volt**) ;
 int nvkm_voltgpio_init (struct nvkm_volt*) ;

int
gf117_volt_new(struct nvkm_device *device, int index, struct nvkm_volt **pvolt)
{
 struct nvkm_volt *volt;
 int ret;

 ret = nvkm_volt_new_(&gf117_volt, device, index, &volt);
 *pvolt = volt;
 if (ret)
  return ret;

 return nvkm_voltgpio_init(volt);
}
