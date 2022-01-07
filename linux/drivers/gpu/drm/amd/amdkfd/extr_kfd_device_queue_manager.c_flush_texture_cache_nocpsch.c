
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct qcm_process_device {scalar_t__ ib_kaddr; int ib_base; int vmid; TYPE_2__* dqm; } ;
struct packet_manager_funcs {int (* release_mem ) (int ,int *) ;int release_mem_size; } ;
struct kfd_dev {int kgd; } ;
struct TYPE_3__ {struct packet_manager_funcs* pmf; } ;
struct TYPE_4__ {TYPE_1__ packets; } ;


 int ENOMEM ;
 int KGD_ENGINE_MEC1 ;
 int amdgpu_amdkfd_submit_ib (int ,int ,int ,int ,int *,int) ;
 int stub1 (int ,int *) ;

__attribute__((used)) static int flush_texture_cache_nocpsch(struct kfd_dev *kdev,
    struct qcm_process_device *qpd)
{
 const struct packet_manager_funcs *pmf = qpd->dqm->packets.pmf;
 int ret;

 if (!qpd->ib_kaddr)
  return -ENOMEM;

 ret = pmf->release_mem(qpd->ib_base, (uint32_t *)qpd->ib_kaddr);
 if (ret)
  return ret;

 return amdgpu_amdkfd_submit_ib(kdev->kgd, KGD_ENGINE_MEC1, qpd->vmid,
    qpd->ib_base, (uint32_t *)qpd->ib_kaddr,
    pmf->release_mem_size / sizeof(uint32_t));
}
