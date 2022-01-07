
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct nvkm_mmu_pt {int addr; int memory; } ;


 unsigned long long BIT_ULL (int) ;



 int WARN_ON (int) ;
 int nvkm_memory_target (int ) ;

__attribute__((used)) static inline bool
gp100_vmm_pde(struct nvkm_mmu_pt *pt, u64 *data)
{
 switch (nvkm_memory_target(pt->memory)) {
 case 128: *data |= 1ULL << 1; break;
 case 130: *data |= 2ULL << 1;
  *data |= BIT_ULL(3);
  break;
 case 129: *data |= 3ULL << 1; break;
 default:
  WARN_ON(1);
  return 0;
 }
 *data |= pt->addr >> 4;
 return 1;
}
