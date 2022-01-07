
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_vmm {struct nouveau_cli* cli; int vmm; } ;
struct nouveau_cli {int mmu; } ;
typedef int s32 ;


 int PAGE_SIZE ;
 int nvif_vmm_init (int *,int ,int,int ,int ,int *,int ,int *) ;

int
nouveau_vmm_init(struct nouveau_cli *cli, s32 oclass, struct nouveau_vmm *vmm)
{
 int ret = nvif_vmm_init(&cli->mmu, oclass, 0, PAGE_SIZE, 0, ((void*)0), 0,
    &vmm->vmm);
 if (ret)
  return ret;

 vmm->cli = cli;
 return 0;
}
