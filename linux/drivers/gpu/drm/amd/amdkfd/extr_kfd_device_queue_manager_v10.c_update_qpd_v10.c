
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcm_process_device {int sh_mem_config; int sh_mem_bases; scalar_t__ sh_mem_ape1_base; scalar_t__ sh_mem_ape1_limit; } ;
struct kfd_process_device {int dummy; } ;
struct device_queue_manager {int dummy; } ;


 int SH_MEM_ALIGNMENT_MODE_UNALIGNED ;
 int SH_MEM_CONFIG__ALIGNMENT_MODE__SHIFT ;
 int SH_MEM_CONFIG__RETRY_DISABLE__SHIFT ;
 int compute_sh_mem_bases_64bit (struct kfd_process_device*) ;
 int pr_debug (char*,int ) ;
 struct kfd_process_device* qpd_to_pdd (struct qcm_process_device*) ;
 scalar_t__ vega10_noretry ;

__attribute__((used)) static int update_qpd_v10(struct device_queue_manager *dqm,
    struct qcm_process_device *qpd)
{
 struct kfd_process_device *pdd;

 pdd = qpd_to_pdd(qpd);


 if (qpd->sh_mem_config == 0) {
  qpd->sh_mem_config =
    SH_MEM_ALIGNMENT_MODE_UNALIGNED <<
     SH_MEM_CONFIG__ALIGNMENT_MODE__SHIFT;
  qpd->sh_mem_ape1_limit = 0;
  qpd->sh_mem_ape1_base = 0;
 }

 qpd->sh_mem_bases = compute_sh_mem_bases_64bit(pdd);

 pr_debug("sh_mem_bases 0x%X\n", qpd->sh_mem_bases);

 return 0;
}
