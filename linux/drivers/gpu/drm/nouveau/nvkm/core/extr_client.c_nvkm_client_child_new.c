
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* ctor ) (struct nvkm_oclass const*,void*,int ,struct nvkm_object**) ;} ;
struct nvkm_oclass {TYPE_1__ base; } ;
struct nvkm_object {int dummy; } ;


 int stub1 (struct nvkm_oclass const*,void*,int ,struct nvkm_object**) ;

__attribute__((used)) static int
nvkm_client_child_new(const struct nvkm_oclass *oclass,
        void *data, u32 size, struct nvkm_object **pobject)
{
 return oclass->base.ctor(oclass, data, size, pobject);
}
