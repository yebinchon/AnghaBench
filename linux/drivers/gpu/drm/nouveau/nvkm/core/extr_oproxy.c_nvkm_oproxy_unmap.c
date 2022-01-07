
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_object {int dummy; } ;
struct TYPE_2__ {int object; } ;


 int nvkm_object_unmap (int ) ;
 TYPE_1__* nvkm_oproxy (struct nvkm_object*) ;

__attribute__((used)) static int
nvkm_oproxy_unmap(struct nvkm_object *object)
{
 return nvkm_object_unmap(nvkm_oproxy(object)->object);
}
