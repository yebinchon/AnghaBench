
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_4__ {int device; } ;
struct nvkm_mmu {TYPE_2__ subdev; TYPE_1__* type; } ;
struct nvkm_memory {int dummy; } ;
struct gf100_mem_vn {int dummy; } ;
struct gf100_mem_v0 {int contig; } ;
struct TYPE_3__ {int type; } ;


 int ENOSYS ;
 int NVKM_MEM_COMP ;
 int NVKM_MEM_DISP ;
 int NVKM_RAM_MM_MIXED ;
 int NVKM_RAM_MM_NORMAL ;
 int nvif_unpack (int,void**,int *,struct gf100_mem_v0,int ,int ,int) ;
 int nvif_unvers (int,void**,int *,struct gf100_mem_vn) ;
 int nvkm_ram_get (int ,int,int,int ,int ,int,int,struct nvkm_memory**) ;

int
gf100_mem_new(struct nvkm_mmu *mmu, int type, u8 page, u64 size,
       void *argv, u32 argc, struct nvkm_memory **pmemory)
{
 union {
  struct gf100_mem_vn vn;
  struct gf100_mem_v0 v0;
 } *args = argv;
 int ret = -ENOSYS;
 bool contig;

 if (!(ret = nvif_unpack(ret, &argv, &argc, args->v0, 0, 0, 0))) {
  contig = args->v0.contig;
 } else
 if (!(ret = nvif_unvers(ret, &argv, &argc, args->vn))) {
  contig = 0;
 } else
  return ret;

 if (mmu->type[type].type & (NVKM_MEM_DISP | NVKM_MEM_COMP))
  type = NVKM_RAM_MM_NORMAL;
 else
  type = NVKM_RAM_MM_MIXED;

 return nvkm_ram_get(mmu->subdev.device, type, 0x01, page,
       size, contig, 0, pmemory);
}
