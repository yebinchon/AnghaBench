
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_volt {int dummy; } ;
struct nvkm_therm {scalar_t__ (* fan_get ) (struct nvkm_therm*) ;scalar_t__ attr_set; scalar_t__ attr_get; } ;
struct nvkm_iccsense {int dummy; } ;
struct nouveau_hwmon {struct device* hwmon; struct drm_device* dev; } ;
struct TYPE_2__ {int device; } ;
struct nouveau_drm {struct nouveau_hwmon* hwmon; TYPE_1__ client; } ;
struct drm_device {int dev; } ;
struct device {int dummy; } ;
struct attribute_group {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct device*) ;
 int NV_DEBUG (struct nouveau_drm*,char*) ;
 int NV_ERROR (struct nouveau_drm*,char*,int) ;
 int N_ATTR_GROUPS ;
 int PTR_ERR (struct device*) ;
 struct device* hwmon_device_register_with_info (int ,char*,struct drm_device*,int *,struct attribute_group const**) ;
 struct nouveau_hwmon* kzalloc (int,int ) ;
 int nouveau_chip_info ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 scalar_t__ nvkm_therm_temp_get (struct nvkm_therm*) ;
 struct nvkm_iccsense* nvxx_iccsense (int *) ;
 struct nvkm_therm* nvxx_therm (int *) ;
 struct nvkm_volt* nvxx_volt (int *) ;
 struct attribute_group pwm_fan_sensor_group ;
 scalar_t__ stub1 (struct nvkm_therm*) ;
 struct attribute_group temp1_auto_point_sensor_group ;

int
nouveau_hwmon_init(struct drm_device *dev)
{
 return 0;

}
