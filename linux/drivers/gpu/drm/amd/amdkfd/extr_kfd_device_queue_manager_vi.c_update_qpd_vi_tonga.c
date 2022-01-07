
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcm_process_device {int sh_mem_config; int sh_mem_bases; scalar_t__ sh_mem_ape1_base; scalar_t__ sh_mem_ape1_limit; } ;
struct kfd_process_device {int dummy; } ;
struct device_queue_manager {int dummy; } ;


 int MTYPE_UC ;
 int SH_MEM_ALIGNMENT_MODE_UNALIGNED ;
 int SH_MEM_CONFIG__ALIGNMENT_MODE__SHIFT ;
 int SH_MEM_CONFIG__APE1_MTYPE__SHIFT ;
 int SH_MEM_CONFIG__DEFAULT_MTYPE__SHIFT ;
 int compute_sh_mem_bases_64bit (unsigned int) ;
 unsigned int get_sh_mem_bases_nybble_64 (struct kfd_process_device*) ;
 int pr_debug (char*,unsigned int,int ) ;
 struct kfd_process_device* qpd_to_pdd (struct qcm_process_device*) ;

__attribute__((used)) static int update_qpd_vi_tonga(struct device_queue_manager *dqm,
   struct qcm_process_device *qpd)
{
 struct kfd_process_device *pdd;
 unsigned int temp;

 pdd = qpd_to_pdd(qpd);


 if (qpd->sh_mem_config == 0) {
  qpd->sh_mem_config =
    SH_MEM_ALIGNMENT_MODE_UNALIGNED <<
     SH_MEM_CONFIG__ALIGNMENT_MODE__SHIFT |
    MTYPE_UC <<
     SH_MEM_CONFIG__DEFAULT_MTYPE__SHIFT |
    MTYPE_UC <<
     SH_MEM_CONFIG__APE1_MTYPE__SHIFT;

  qpd->sh_mem_ape1_limit = 0;
  qpd->sh_mem_ape1_base = 0;
 }




 temp = get_sh_mem_bases_nybble_64(pdd);
 qpd->sh_mem_bases = compute_sh_mem_bases_64bit(temp);

 pr_debug("sh_mem_bases nybble: 0x%X and register 0x%X\n",
  temp, qpd->sh_mem_bases);

 return 0;
}
