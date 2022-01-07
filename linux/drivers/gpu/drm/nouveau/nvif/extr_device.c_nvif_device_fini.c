
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvif_device {int object; int * runlist; } ;


 int kfree (int *) ;
 int nvif_object_fini (int *) ;
 int nvif_user_fini (struct nvif_device*) ;

void
nvif_device_fini(struct nvif_device *device)
{
 nvif_user_fini(device);
 kfree(device->runlist);
 device->runlist = ((void*)0);
 nvif_object_fini(&device->object);
}
