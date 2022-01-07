
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_vmm_iter {int * pt; int desc; } ;


 int nvkm_vmm_ref_ptes (struct nvkm_vmm_iter*,int,int ,int ) ;
 int nvkm_vmm_sparse_ptes (int ,int ,int ,int ) ;

__attribute__((used)) static bool
nvkm_vmm_sparse_ref_ptes(struct nvkm_vmm_iter *it, bool pfn, u32 ptei, u32 ptes)
{
 nvkm_vmm_sparse_ptes(it->desc, it->pt[0], ptei, ptes);
 return nvkm_vmm_ref_ptes(it, pfn, ptei, ptes);
}
