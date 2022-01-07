
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_object {int dummy; } ;


 void* nvkm_dmaobj (struct nvkm_object*) ;

__attribute__((used)) static void *
nvkm_dmaobj_dtor(struct nvkm_object *base)
{
 return nvkm_dmaobj(base);
}
