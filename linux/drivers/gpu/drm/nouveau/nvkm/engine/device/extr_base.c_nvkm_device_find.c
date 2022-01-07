
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nvkm_device {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nv_devices_mutex ;
 struct nvkm_device* nvkm_device_find_locked (int ) ;

struct nvkm_device *
nvkm_device_find(u64 handle)
{
 struct nvkm_device *device;
 mutex_lock(&nv_devices_mutex);
 device = nvkm_device_find_locked(handle);
 mutex_unlock(&nv_devices_mutex);
 return device;
}
