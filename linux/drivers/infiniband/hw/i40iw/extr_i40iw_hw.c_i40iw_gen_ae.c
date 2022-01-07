
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i40iw_sc_qp {int dummy; } ;
struct i40iw_gen_ae_info {int ae_code; } ;
struct i40iw_device {int cqp; } ;
struct TYPE_4__ {uintptr_t scratch; struct i40iw_sc_qp* qp; struct i40iw_gen_ae_info info; } ;
struct TYPE_5__ {TYPE_1__ gen_ae; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
struct cqp_commands_info {int post_sq; TYPE_3__ in; int cqp_cmd; } ;
struct i40iw_cqp_request {struct cqp_commands_info info; } ;


 int OP_GEN_AE ;
 struct i40iw_cqp_request* i40iw_get_cqp_request (int *,int) ;
 scalar_t__ i40iw_handle_cqp_op (struct i40iw_device*,struct i40iw_cqp_request*) ;
 int i40iw_pr_err (char*,int ) ;
 int memcpy (struct i40iw_gen_ae_info*,struct i40iw_gen_ae_info*,int) ;

void i40iw_gen_ae(struct i40iw_device *iwdev,
    struct i40iw_sc_qp *qp,
    struct i40iw_gen_ae_info *info,
    bool wait)
{
 struct i40iw_gen_ae_info *ae_info;
 struct i40iw_cqp_request *cqp_request;
 struct cqp_commands_info *cqp_info;

 cqp_request = i40iw_get_cqp_request(&iwdev->cqp, wait);
 if (!cqp_request)
  return;

 cqp_info = &cqp_request->info;
 ae_info = &cqp_request->info.in.u.gen_ae.info;
 memcpy(ae_info, info, sizeof(*ae_info));

 cqp_info->cqp_cmd = OP_GEN_AE;
 cqp_info->post_sq = 1;
 cqp_info->in.u.gen_ae.qp = qp;
 cqp_info->in.u.gen_ae.scratch = (uintptr_t)cqp_request;
 if (i40iw_handle_cqp_op(iwdev, cqp_request))
  i40iw_pr_err("CQP OP failed attempting to generate ae_code=0x%x\n",
        info->ae_code);
}
