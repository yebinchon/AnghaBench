
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvif_vmm {int object; int page; } ;


 int kfree (int ) ;
 int nvif_object_fini (int *) ;

void
nvif_vmm_fini(struct nvif_vmm *vmm)
{
 kfree(vmm->page);
 nvif_object_fini(&vmm->object);
}
