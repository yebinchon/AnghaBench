
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_object {int dummy; } ;
struct nvkm_event {int dummy; } ;
struct TYPE_2__ {int object; } ;


 int nvkm_object_ntfy (int ,int ,struct nvkm_event**) ;
 TYPE_1__* nvkm_oproxy (struct nvkm_object*) ;

__attribute__((used)) static int
nvkm_oproxy_ntfy(struct nvkm_object *object, u32 mthd,
   struct nvkm_event **pevent)
{
 return nvkm_object_ntfy(nvkm_oproxy(object)->object, mthd, pevent);
}
