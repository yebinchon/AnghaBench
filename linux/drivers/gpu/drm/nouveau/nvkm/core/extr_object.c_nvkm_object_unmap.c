
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_object {TYPE_1__* func; } ;
struct TYPE_2__ {int (* unmap ) (struct nvkm_object*) ;} ;


 int ENODEV ;
 scalar_t__ likely (int (*) (struct nvkm_object*)) ;
 int stub1 (struct nvkm_object*) ;

int
nvkm_object_unmap(struct nvkm_object *object)
{
 if (likely(object->func->unmap))
  return object->func->unmap(object);
 return -ENODEV;
}
