
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_cmd {int prot_op; int prot_checks; } ;
struct TYPE_2__ {void* sig_type; } ;
struct ib_sig_attrs {int check_mask; TYPE_1__ mem; TYPE_1__ wire; } ;


 int EINVAL ;
 int IB_SIG_CHECK_APPTAG ;
 int IB_SIG_CHECK_GUARD ;
 int IB_SIG_CHECK_REFTAG ;
 void* IB_SIG_TYPE_NONE ;
 int TARGET_DIF_CHECK_APPTAG ;
 int TARGET_DIF_CHECK_GUARD ;
 int TARGET_DIF_CHECK_REFTAG ;






 int isert_err (char*,int) ;
 int isert_set_dif_domain (struct se_cmd*,TYPE_1__*) ;
 int memset (struct ib_sig_attrs*,int ,int) ;

__attribute__((used)) static int
isert_set_sig_attrs(struct se_cmd *se_cmd, struct ib_sig_attrs *sig_attrs)
{
 memset(sig_attrs, 0, sizeof(*sig_attrs));

 switch (se_cmd->prot_op) {
 case 133:
 case 128:
  sig_attrs->mem.sig_type = IB_SIG_TYPE_NONE;
  isert_set_dif_domain(se_cmd, &sig_attrs->wire);
  break;
 case 130:
 case 131:
  sig_attrs->wire.sig_type = IB_SIG_TYPE_NONE;
  isert_set_dif_domain(se_cmd, &sig_attrs->mem);
  break;
 case 132:
 case 129:
  isert_set_dif_domain(se_cmd, &sig_attrs->wire);
  isert_set_dif_domain(se_cmd, &sig_attrs->mem);
  break;
 default:
  isert_err("Unsupported PI operation %d\n", se_cmd->prot_op);
  return -EINVAL;
 }

 if (se_cmd->prot_checks & TARGET_DIF_CHECK_GUARD)
  sig_attrs->check_mask |= IB_SIG_CHECK_GUARD;
 if (se_cmd->prot_checks & TARGET_DIF_CHECK_APPTAG)
  sig_attrs->check_mask |= IB_SIG_CHECK_APPTAG;
 if (se_cmd->prot_checks & TARGET_DIF_CHECK_REFTAG)
  sig_attrs->check_mask |= IB_SIG_CHECK_REFTAG;

 return 0;
}
