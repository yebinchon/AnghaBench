
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct se_cmd {scalar_t__ prot_type; int reftag_seed; TYPE_2__* se_dev; } ;
struct TYPE_7__ {int apptag_check_mask; int app_escape; int ref_escape; int ref_remap; int ref_tag; int pi_interval; int bg_type; } ;
struct TYPE_8__ {TYPE_3__ dif; } ;
struct ib_sig_domain {TYPE_4__ sig; int sig_type; } ;
struct TYPE_5__ {int block_size; } ;
struct TYPE_6__ {TYPE_1__ dev_attrib; } ;


 int IB_SIG_TYPE_T10_DIF ;
 int IB_T10DIF_CRC ;
 scalar_t__ TARGET_DIF_TYPE1_PROT ;
 scalar_t__ TARGET_DIF_TYPE2_PROT ;

__attribute__((used)) static inline void
isert_set_dif_domain(struct se_cmd *se_cmd, struct ib_sig_domain *domain)
{
 domain->sig_type = IB_SIG_TYPE_T10_DIF;
 domain->sig.dif.bg_type = IB_T10DIF_CRC;
 domain->sig.dif.pi_interval = se_cmd->se_dev->dev_attrib.block_size;
 domain->sig.dif.ref_tag = se_cmd->reftag_seed;





 domain->sig.dif.apptag_check_mask = 0xffff;
 domain->sig.dif.app_escape = 1;
 domain->sig.dif.ref_escape = 1;
 if (se_cmd->prot_type == TARGET_DIF_TYPE1_PROT ||
     se_cmd->prot_type == TARGET_DIF_TYPE2_PROT)
  domain->sig.dif.ref_remap = 1;
}
