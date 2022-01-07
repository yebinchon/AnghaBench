
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_sec2 {int engine; int work; int addr; } ;
struct nvkm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 struct nvkm_sec2* kzalloc (int,int ) ;
 int nvkm_engine_ctor (int *,struct nvkm_device*,int,int,int *) ;
 int nvkm_sec2 ;
 int nvkm_sec2_recv ;

int
nvkm_sec2_new_(struct nvkm_device *device, int index, u32 addr,
        struct nvkm_sec2 **psec2)
{
 struct nvkm_sec2 *sec2;

 if (!(sec2 = *psec2 = kzalloc(sizeof(*sec2), GFP_KERNEL)))
  return -ENOMEM;
 sec2->addr = addr;
 INIT_WORK(&sec2->work, nvkm_sec2_recv);

 return nvkm_engine_ctor(&nvkm_sec2, device, index, 1, &sec2->engine);
}
