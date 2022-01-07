
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_volt {int dummy; } ;
struct nvkm_subdev {int dummy; } ;


 int ENODEV ;
 int nvkm_debug (struct nvkm_subdev*,char*,...) ;
 struct nvkm_volt* nvkm_volt (struct nvkm_subdev*) ;
 int nvkm_volt_get (struct nvkm_volt*) ;

__attribute__((used)) static int
nvkm_volt_init(struct nvkm_subdev *subdev)
{
 struct nvkm_volt *volt = nvkm_volt(subdev);
 int ret = nvkm_volt_get(volt);
 if (ret < 0) {
  if (ret != -ENODEV)
   nvkm_debug(subdev, "current voltage unknown\n");
  return 0;
 }
 nvkm_debug(subdev, "current voltage: %duv\n", ret);
 return 0;
}
