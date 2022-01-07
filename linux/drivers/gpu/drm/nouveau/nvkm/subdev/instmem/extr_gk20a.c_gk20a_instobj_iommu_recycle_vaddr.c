
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int memory; int * vaddr; struct gk20a_instmem* imem; } ;
struct gk20a_instobj_iommu {TYPE_2__ base; int vaddr_node; int use_cpt; } ;
struct TYPE_3__ {int subdev; } ;
struct gk20a_instmem {int vaddr_max; int vaddr_use; TYPE_1__ base; } ;


 int WARN_ON (int ) ;
 int list_del (int *) ;
 int nvkm_debug (int *,char*,int ,int ) ;
 scalar_t__ nvkm_memory_size (int *) ;
 int vunmap (int *) ;

__attribute__((used)) static void
gk20a_instobj_iommu_recycle_vaddr(struct gk20a_instobj_iommu *obj)
{
 struct gk20a_instmem *imem = obj->base.imem;

 WARN_ON(obj->use_cpt);
 list_del(&obj->vaddr_node);
 vunmap(obj->base.vaddr);
 obj->base.vaddr = ((void*)0);
 imem->vaddr_use -= nvkm_memory_size(&obj->base.memory);
 nvkm_debug(&imem->base.subdev, "vaddr used: %x/%x\n", imem->vaddr_use,
     imem->vaddr_max);
}
