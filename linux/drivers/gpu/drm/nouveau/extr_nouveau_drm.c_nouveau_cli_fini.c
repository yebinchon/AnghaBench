
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nouveau_cli {TYPE_2__* drm; int base; int device; int mmu; int vmm; int svm; int worker; int work; } ;
struct TYPE_3__ {int lock; } ;
struct TYPE_4__ {TYPE_1__ master; } ;


 int WARN_ON (int) ;
 int flush_work (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nouveau_vmm_fini (int *) ;
 int nvif_client_fini (int *) ;
 int nvif_device_fini (int *) ;
 int nvif_mmu_fini (int *) ;
 int usif_client_fini (struct nouveau_cli*) ;

__attribute__((used)) static void
nouveau_cli_fini(struct nouveau_cli *cli)
{





 flush_work(&cli->work);
 WARN_ON(!list_empty(&cli->worker));

 usif_client_fini(cli);
 nouveau_vmm_fini(&cli->svm);
 nouveau_vmm_fini(&cli->vmm);
 nvif_mmu_fini(&cli->mmu);
 nvif_device_fini(&cli->device);
 mutex_lock(&cli->drm->master.lock);
 nvif_client_fini(&cli->base);
 mutex_unlock(&cli->drm->master.lock);
}
