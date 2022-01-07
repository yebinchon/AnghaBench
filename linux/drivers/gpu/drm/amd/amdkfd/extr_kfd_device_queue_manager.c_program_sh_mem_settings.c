
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qcm_process_device {int sh_mem_bases; int sh_mem_ape1_limit; int sh_mem_ape1_base; int sh_mem_config; int vmid; } ;
struct device_queue_manager {TYPE_2__* dev; } ;
struct TYPE_4__ {int kgd; TYPE_1__* kfd2kgd; } ;
struct TYPE_3__ {void (* program_sh_mem_settings ) (int ,int ,int ,int ,int ,int ) ;} ;


 void stub1 (int ,int ,int ,int ,int ,int ) ;

void program_sh_mem_settings(struct device_queue_manager *dqm,
     struct qcm_process_device *qpd)
{
 return dqm->dev->kfd2kgd->program_sh_mem_settings(
      dqm->dev->kgd, qpd->vmid,
      qpd->sh_mem_config,
      qpd->sh_mem_ape1_base,
      qpd->sh_mem_ape1_limit,
      qpd->sh_mem_bases);
}
