
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nvkm_vmm_pt {int page; struct nvkm_mmu_pt** pt; } ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_mmu_pt {int addr; int memory; } ;





 int WARN_ON (int) ;
 int nvkm_memory_size (int ) ;
 int nvkm_memory_target (int ) ;

__attribute__((used)) static bool
nv50_vmm_pde(struct nvkm_vmm *vmm, struct nvkm_vmm_pt *pgt, u64 *pdata)
{
 struct nvkm_mmu_pt *pt;
 u64 data = 0xdeadcafe00000000ULL;
 if (pgt && (pt = pgt->pt[0])) {
  switch (pgt->page) {
  case 16: data = 0x00000001; break;
  case 12: data = 0x00000003;
   switch (nvkm_memory_size(pt->memory)) {
   case 0x100000: data |= 0x00000000; break;
   case 0x040000: data |= 0x00000020; break;
   case 0x020000: data |= 0x00000040; break;
   case 0x010000: data |= 0x00000060; break;
   default:
    WARN_ON(1);
    return 0;
   }
   break;
  default:
   WARN_ON(1);
   return 0;
  }

  switch (nvkm_memory_target(pt->memory)) {
  case 128: data |= 0x00000000; break;
  case 130: data |= 0x00000008; break;
  case 129: data |= 0x0000000c; break;
  default:
   WARN_ON(1);
   return 0;
  }

  data |= pt->addr;
 }
 *pdata = data;
 return 1;
}
