
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvif_object {int dummy; } ;
struct TYPE_4__ {scalar_t__ version; } ;
struct TYPE_3__ {int * func; } ;
struct nvif_device {TYPE_2__ info; int object; TYPE_1__ user; int * runlist; } ;
typedef int s32 ;


 int NV_DEVICE_V0_INFO ;
 int nvif_object_init (struct nvif_object*,int ,int ,void*,int ,int *) ;
 int nvif_object_mthd (int *,int ,TYPE_2__*,int) ;

int
nvif_device_init(struct nvif_object *parent, u32 handle, s32 oclass,
   void *data, u32 size, struct nvif_device *device)
{
 int ret = nvif_object_init(parent, handle, oclass, data, size,
       &device->object);
 device->runlist = ((void*)0);
 device->user.func = ((void*)0);
 if (ret == 0) {
  device->info.version = 0;
  ret = nvif_object_mthd(&device->object, NV_DEVICE_V0_INFO,
           &device->info, sizeof(device->info));
 }
 return ret;
}
