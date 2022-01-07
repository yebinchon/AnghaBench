
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nvkm_object {TYPE_1__* func; } ;
struct TYPE_2__ {int (* wr32 ) (struct nvkm_object*,int ,int ) ;} ;


 int ENODEV ;
 scalar_t__ likely (int (*) (struct nvkm_object*,int ,int )) ;
 int stub1 (struct nvkm_object*,int ,int ) ;

int
nvkm_object_wr32(struct nvkm_object *object, u64 addr, u32 data)
{
 if (likely(object->func->wr32))
  return object->func->wr32(object, addr, data);
 return -ENODEV;
}
