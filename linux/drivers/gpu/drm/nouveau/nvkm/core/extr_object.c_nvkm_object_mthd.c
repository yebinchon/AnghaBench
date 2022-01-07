
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_object {TYPE_1__* func; } ;
struct TYPE_2__ {int (* mthd ) (struct nvkm_object*,int ,void*,int ) ;} ;


 int ENODEV ;
 scalar_t__ likely (int (*) (struct nvkm_object*,int ,void*,int )) ;
 int stub1 (struct nvkm_object*,int ,void*,int ) ;

int
nvkm_object_mthd(struct nvkm_object *object, u32 mthd, void *data, u32 size)
{
 if (likely(object->func->mthd))
  return object->func->mthd(object, mthd, data, size);
 return -ENODEV;
}
