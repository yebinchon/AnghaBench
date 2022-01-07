
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_memx {TYPE_1__* pmu; } ;
struct TYPE_2__ {int subdev; } ;


 int MEMX_ENTER ;
 int memx_cmd (struct nvkm_memx*,int ,int ,int *) ;
 int nvkm_debug (int *,char*) ;

void
nvkm_memx_block(struct nvkm_memx *memx)
{
 nvkm_debug(&memx->pmu->subdev, "   HOST BLOCKED\n");
 memx_cmd(memx, MEMX_ENTER, 0, ((void*)0));
}
