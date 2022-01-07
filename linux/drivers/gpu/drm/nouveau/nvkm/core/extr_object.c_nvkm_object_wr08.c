
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct nvkm_object {TYPE_1__* func; } ;
struct TYPE_2__ {int (* wr08 ) (struct nvkm_object*,int ,int ) ;} ;


 int ENODEV ;
 scalar_t__ likely (int (*) (struct nvkm_object*,int ,int )) ;
 int stub1 (struct nvkm_object*,int ,int ) ;

int
nvkm_object_wr08(struct nvkm_object *object, u64 addr, u8 data)
{
 if (likely(object->func->wr08))
  return object->func->wr08(object, addr, data);
 return -ENODEV;
}
