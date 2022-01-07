
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct se_cmd {scalar_t__ bad_sector; scalar_t__ t_task_lba; int pi_err; TYPE_2__* se_dev; } ;
struct TYPE_6__ {int err_type; int actual; int expected; scalar_t__ sig_err_offset; } ;
struct ib_mr_status {int fail_status; TYPE_3__ sig_err; } ;
struct ib_mr {int dummy; } ;
struct TYPE_4__ {scalar_t__ block_size; } ;
struct TYPE_5__ {TYPE_1__ dev_attrib; } ;


 int IB_MR_CHECK_SIG_STATUS ;



 int TCM_LOGICAL_BLOCK_APP_TAG_CHECK_FAILED ;
 int TCM_LOGICAL_BLOCK_GUARD_CHECK_FAILED ;
 int TCM_LOGICAL_BLOCK_REF_TAG_CHECK_FAILED ;
 int do_div (scalar_t__,scalar_t__) ;
 int ib_check_mr_status (struct ib_mr*,int,struct ib_mr_status*) ;
 int isert_err (char*,int,...) ;

__attribute__((used)) static int
isert_check_pi_status(struct se_cmd *se_cmd, struct ib_mr *sig_mr)
{
 struct ib_mr_status mr_status;
 int ret;

 ret = ib_check_mr_status(sig_mr, IB_MR_CHECK_SIG_STATUS, &mr_status);
 if (ret) {
  isert_err("ib_check_mr_status failed, ret %d\n", ret);
  goto fail_mr_status;
 }

 if (mr_status.fail_status & IB_MR_CHECK_SIG_STATUS) {
  u64 sec_offset_err;
  u32 block_size = se_cmd->se_dev->dev_attrib.block_size + 8;

  switch (mr_status.sig_err.err_type) {
  case 129:
   se_cmd->pi_err = TCM_LOGICAL_BLOCK_GUARD_CHECK_FAILED;
   break;
  case 128:
   se_cmd->pi_err = TCM_LOGICAL_BLOCK_REF_TAG_CHECK_FAILED;
   break;
  case 130:
   se_cmd->pi_err = TCM_LOGICAL_BLOCK_APP_TAG_CHECK_FAILED;
   break;
  }
  sec_offset_err = mr_status.sig_err.sig_err_offset;
  do_div(sec_offset_err, block_size);
  se_cmd->bad_sector = sec_offset_err + se_cmd->t_task_lba;

  isert_err("PI error found type %d at sector 0x%llx "
     "expected 0x%x vs actual 0x%x\n",
     mr_status.sig_err.err_type,
     (unsigned long long)se_cmd->bad_sector,
     mr_status.sig_err.expected,
     mr_status.sig_err.actual);
  ret = 1;
 }

fail_mr_status:
 return ret;
}
