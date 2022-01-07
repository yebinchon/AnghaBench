
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_gr {int dummy; } ;
struct TYPE_4__ {int device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct nv20_gr {int ctxtab; TYPE_3__ base; } ;


 int NVKM_MEM_TARGET_INST ;
 struct nv20_gr* nv20_gr (struct nvkm_gr*) ;
 int nvkm_memory_new (int ,int ,int,int,int,int *) ;

int
nv20_gr_oneinit(struct nvkm_gr *base)
{
 struct nv20_gr *gr = nv20_gr(base);
 return nvkm_memory_new(gr->base.engine.subdev.device,
          NVKM_MEM_TARGET_INST, 32 * 4, 16,
          1, &gr->ctxtab);
}
