
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct nvkm_object {TYPE_1__* func; } ;
struct TYPE_2__ {int (* rd16 ) (struct nvkm_object*,int ,int *) ;} ;


 int ENODEV ;
 scalar_t__ likely (int (*) (struct nvkm_object*,int ,int *)) ;
 int stub1 (struct nvkm_object*,int ,int *) ;

int
nvkm_object_rd16(struct nvkm_object *object, u64 addr, u16 *data)
{
 if (likely(object->func->rd16))
  return object->func->rd16(object, addr, data);
 return -ENODEV;
}
