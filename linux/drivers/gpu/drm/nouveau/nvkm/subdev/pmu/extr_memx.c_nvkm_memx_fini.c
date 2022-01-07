
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_pmu {struct nvkm_subdev subdev; } ;
struct nvkm_memx {int base; struct nvkm_pmu* pmu; } ;
struct nvkm_device {int dummy; } ;


 int MEMX_MSG_EXEC ;
 int PROC_MEMX ;
 int kfree (struct nvkm_memx*) ;
 int memx_out (struct nvkm_memx*) ;
 int nvkm_debug (struct nvkm_subdev*,char*,int,int) ;
 int nvkm_pmu_send (struct nvkm_pmu*,int*,int ,int ,int ,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

int
nvkm_memx_fini(struct nvkm_memx **pmemx, bool exec)
{
 struct nvkm_memx *memx = *pmemx;
 struct nvkm_pmu *pmu = memx->pmu;
 struct nvkm_subdev *subdev = &pmu->subdev;
 struct nvkm_device *device = subdev->device;
 u32 finish, reply[2];


 memx_out(memx);


 finish = nvkm_rd32(device, 0x10a1c0) & 0x00ffffff;
 nvkm_wr32(device, 0x10a580, 0x00000000);


 if (exec) {
  nvkm_pmu_send(pmu, reply, PROC_MEMX, MEMX_MSG_EXEC,
         memx->base, finish);
  nvkm_debug(subdev, "Exec took %uns, PMU_IN %08x\n",
      reply[0], reply[1]);
 }

 kfree(memx);
 return 0;
}
