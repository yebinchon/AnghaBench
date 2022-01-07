
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_sec2 {int work; } ;
struct nvkm_engine {int dummy; } ;


 int flush_work (int *) ;
 struct nvkm_sec2* nvkm_sec2 (struct nvkm_engine*) ;

__attribute__((used)) static int
nvkm_sec2_fini(struct nvkm_engine *engine, bool suspend)
{
 struct nvkm_sec2 *sec2 = nvkm_sec2(engine);
 flush_work(&sec2->work);
 return 0;
}
