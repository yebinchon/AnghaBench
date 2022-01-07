
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_object {TYPE_1__* func; } ;
struct nvkm_event {int dummy; } ;
struct TYPE_2__ {int (* ntfy ) (struct nvkm_object*,int ,struct nvkm_event**) ;} ;


 int ENODEV ;
 scalar_t__ likely (int (*) (struct nvkm_object*,int ,struct nvkm_event**)) ;
 int stub1 (struct nvkm_object*,int ,struct nvkm_event**) ;

int
nvkm_object_ntfy(struct nvkm_object *object, u32 mthd,
   struct nvkm_event **pevent)
{
 if (likely(object->func->ntfy))
  return object->func->ntfy(object, mthd, pevent);
 return -ENODEV;
}
