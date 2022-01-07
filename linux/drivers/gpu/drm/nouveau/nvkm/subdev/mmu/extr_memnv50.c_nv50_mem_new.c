
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int device; } ;
struct nvkm_mmu {TYPE_1__ subdev; } ;
struct nvkm_memory {int dummy; } ;
struct nv50_mem_vn {int dummy; } ;
struct nv50_mem_v0 {int contig; scalar_t__ bankswz; } ;


 int ENOSYS ;
 int NVKM_RAM_MM_NORMAL ;
 int nvif_unpack (int,void**,int *,struct nv50_mem_v0,int ,int ,int) ;
 int nvif_unvers (int,void**,int *,struct nv50_mem_vn) ;
 int nvkm_ram_get (int ,int ,int,int ,int ,int,int,struct nvkm_memory**) ;

int
nv50_mem_new(struct nvkm_mmu *mmu, int type, u8 page, u64 size,
      void *argv, u32 argc, struct nvkm_memory **pmemory)
{
 union {
  struct nv50_mem_vn vn;
  struct nv50_mem_v0 v0;
 } *args = argv;
 int ret = -ENOSYS;
 bool contig;

 if (!(ret = nvif_unpack(ret, &argv, &argc, args->v0, 0, 0, 0))) {
  type = args->v0.bankswz ? 0x02 : 0x01;
  contig = args->v0.contig;
 } else
 if (!(ret = nvif_unvers(ret, &argv, &argc, args->vn))) {
  type = 0x01;
  contig = 0;
 } else
  return -ENOSYS;

 return nvkm_ram_get(mmu->subdev.device, NVKM_RAM_MM_NORMAL, type,
       page, size, contig, 0, pmemory);
}
