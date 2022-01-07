
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_engine {int dummy; } ;


 void* nv31_mpeg (struct nvkm_engine*) ;

__attribute__((used)) static void *
nv31_mpeg_dtor(struct nvkm_engine *engine)
{
 return nv31_mpeg(engine);
}
