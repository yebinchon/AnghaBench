
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nvkm_object {int dummy; } ;
struct TYPE_2__ {int object; } ;


 int nvkm_object_rd32 (int ,int ,int *) ;
 TYPE_1__* nvkm_oproxy (struct nvkm_object*) ;

__attribute__((used)) static int
nvkm_oproxy_rd32(struct nvkm_object *object, u64 addr, u32 *data)
{
 return nvkm_object_rd32(nvkm_oproxy(object)->object, addr, data);
}
