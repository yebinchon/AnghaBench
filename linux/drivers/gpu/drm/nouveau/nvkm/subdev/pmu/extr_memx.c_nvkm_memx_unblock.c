
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_memx {TYPE_1__* pmu; } ;
struct TYPE_2__ {int subdev; } ;


 int MEMX_LEAVE ;
 int memx_cmd (struct nvkm_memx*,int ,int ,int *) ;
 int nvkm_debug (int *,char*) ;

void
nvkm_memx_unblock(struct nvkm_memx *memx)
{
 nvkm_debug(&memx->pmu->subdev, "   HOST UNBLOCKED\n");
 memx_cmd(memx, MEMX_LEAVE, 0, ((void*)0));
}
