
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i40iw_qp {int iwarp_state; int sc_qp; int cm_node; } ;
struct i40iw_modify_qp_info {int next_iwarp_state; } ;
struct i40iw_gen_ae_info {int ae_source; int ae_code; } ;
struct i40iw_device {int cqp; } ;
struct TYPE_4__ {uintptr_t scratch; int * qp; struct i40iw_modify_qp_info info; } ;
struct TYPE_5__ {TYPE_1__ qp_modify; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
struct cqp_commands_info {int post_sq; TYPE_3__ in; int cqp_cmd; } ;
struct i40iw_cqp_request {struct cqp_commands_info info; } ;


 int I40IW_AE_BAD_CLOSE ;





 int OP_QP_MODIFY ;
 int i40iw_gen_ae (struct i40iw_device*,int *,struct i40iw_gen_ae_info*,int) ;
 struct i40iw_cqp_request* i40iw_get_cqp_request (int *,int) ;
 int i40iw_handle_cqp_op (struct i40iw_device*,struct i40iw_cqp_request*) ;
 int i40iw_send_reset (int ) ;
 int memcpy (struct i40iw_modify_qp_info*,struct i40iw_modify_qp_info*,int) ;

void i40iw_hw_modify_qp(struct i40iw_device *iwdev, struct i40iw_qp *iwqp,
   struct i40iw_modify_qp_info *info, bool wait)
{
 struct i40iw_cqp_request *cqp_request;
 struct cqp_commands_info *cqp_info;
 struct i40iw_modify_qp_info *m_info;
 struct i40iw_gen_ae_info ae_info;

 cqp_request = i40iw_get_cqp_request(&iwdev->cqp, wait);
 if (!cqp_request)
  return;

 cqp_info = &cqp_request->info;
 m_info = &cqp_info->in.u.qp_modify.info;
 memcpy(m_info, info, sizeof(*m_info));
 cqp_info->cqp_cmd = OP_QP_MODIFY;
 cqp_info->post_sq = 1;
 cqp_info->in.u.qp_modify.qp = &iwqp->sc_qp;
 cqp_info->in.u.qp_modify.scratch = (uintptr_t)cqp_request;
 if (!i40iw_handle_cqp_op(iwdev, cqp_request))
  return;

 switch (m_info->next_iwarp_state) {
 case 129:
  if (iwqp->iwarp_state == 130)
   i40iw_send_reset(iwqp->cm_node);

 case 130:
 case 128:
 case 132:
  ae_info.ae_code = I40IW_AE_BAD_CLOSE;
  ae_info.ae_source = 0;
  i40iw_gen_ae(iwdev, &iwqp->sc_qp, &ae_info, 0);
  break;
 case 131:
 default:
  break;
 }
}
