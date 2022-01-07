
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_i2c_bus {int dummy; } ;
struct nvkm_i2c {int dummy; } ;
struct TYPE_2__ {int device; } ;
struct nouveau_drm {TYPE_1__ client; } ;
struct drm_device {int dummy; } ;


 int ENODEV ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nv04_tv_encoder_info ;
 struct nvkm_i2c_bus* nvkm_i2c_bus_find (struct nvkm_i2c*,int) ;
 int nvkm_i2c_bus_probe (struct nvkm_i2c_bus*,char*,int ,int *,int *) ;
 struct nvkm_i2c* nvxx_i2c (int *) ;

int nv04_tv_identify(struct drm_device *dev, int i2c_index)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nvkm_i2c *i2c = nvxx_i2c(&drm->client.device);
 struct nvkm_i2c_bus *bus = nvkm_i2c_bus_find(i2c, i2c_index);
 if (bus) {
  return nvkm_i2c_bus_probe(bus, "TV encoder",
       nv04_tv_encoder_info,
       ((void*)0), ((void*)0));
 }
 return -ENODEV;
}
