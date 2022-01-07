
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_memory {int dummy; } ;
struct nvkm_falcon {TYPE_1__* func; int user; } ;
struct TYPE_2__ {int (* bind_context ) (struct nvkm_falcon*,struct nvkm_memory*) ;} ;


 int nvkm_error (int ,char*) ;
 int stub1 (struct nvkm_falcon*,struct nvkm_memory*) ;

void
nvkm_falcon_bind_context(struct nvkm_falcon *falcon, struct nvkm_memory *inst)
{
 if (!falcon->func->bind_context) {
  nvkm_error(falcon->user,
      "Context binding not supported on this falcon!\n");
  return;
 }

 falcon->func->bind_context(falcon, inst);
}
