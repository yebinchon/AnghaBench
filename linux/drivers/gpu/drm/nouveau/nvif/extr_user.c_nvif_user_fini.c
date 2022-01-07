
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * func; int object; } ;
struct nvif_device {TYPE_1__ user; } ;


 int nvif_object_fini (int *) ;

void
nvif_user_fini(struct nvif_device *device)
{
 if (device->user.func) {
  nvif_object_fini(&device->user.object);
  device->user.func = ((void*)0);
 }
}
