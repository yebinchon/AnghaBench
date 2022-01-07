
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_engine {int dummy; } ;


 void* nvkm_falcon (struct nvkm_engine*) ;

__attribute__((used)) static void *
nvkm_falcon_dtor(struct nvkm_engine *engine)
{
 return nvkm_falcon(engine);
}
