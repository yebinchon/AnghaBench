
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_oclass {int dummy; } ;
struct nvkm_object {int dummy; } ;


 int nvkm_object_new_ (int *,struct nvkm_oclass const*,void*,int ,struct nvkm_object**) ;
 int tu102_fifo_user ;

int
tu102_fifo_user_new(const struct nvkm_oclass *oclass, void *argv, u32 argc,
      struct nvkm_object **pobject)
{
 return nvkm_object_new_(&tu102_fifo_user, oclass, argv, argc, pobject);
}
