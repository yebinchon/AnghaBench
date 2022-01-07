
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct i40iw_cqp {int sc_cqp; } ;
struct i40iw_device {struct i40iw_cqp cqp; } ;
struct TYPE_8__ {int op_ret_val; } ;
struct TYPE_5__ {uintptr_t scratch; int * cqp; } ;
struct TYPE_6__ {TYPE_1__ alloc_local_mac_ipaddr_entry; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct cqp_commands_info {int post_sq; TYPE_3__ in; int cqp_cmd; } ;
struct i40iw_cqp_request {TYPE_4__ compl_info; struct cqp_commands_info info; int refcount; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_ERR_NO_MEMORY ;
 int OP_ALLOC_LOCAL_MAC_IPADDR_ENTRY ;
 int atomic_inc (int *) ;
 struct i40iw_cqp_request* i40iw_get_cqp_request (struct i40iw_cqp*,int) ;
 int i40iw_handle_cqp_op (struct i40iw_device*,struct i40iw_cqp_request*) ;
 int i40iw_pr_err (char*) ;
 int i40iw_put_cqp_request (struct i40iw_cqp*,struct i40iw_cqp_request*) ;

__attribute__((used)) static enum i40iw_status_code i40iw_alloc_local_mac_ipaddr_entry(struct i40iw_device *iwdev,
         u16 *mac_ip_tbl_idx)
{
 struct i40iw_cqp *iwcqp = &iwdev->cqp;
 struct i40iw_cqp_request *cqp_request;
 struct cqp_commands_info *cqp_info;
 enum i40iw_status_code status = 0;

 cqp_request = i40iw_get_cqp_request(iwcqp, 1);
 if (!cqp_request) {
  i40iw_pr_err("cqp_request memory failed\n");
  return I40IW_ERR_NO_MEMORY;
 }


 atomic_inc(&cqp_request->refcount);

 cqp_info = &cqp_request->info;
 cqp_info->cqp_cmd = OP_ALLOC_LOCAL_MAC_IPADDR_ENTRY;
 cqp_info->post_sq = 1;
 cqp_info->in.u.alloc_local_mac_ipaddr_entry.cqp = &iwcqp->sc_cqp;
 cqp_info->in.u.alloc_local_mac_ipaddr_entry.scratch = (uintptr_t)cqp_request;
 status = i40iw_handle_cqp_op(iwdev, cqp_request);
 if (!status)
  *mac_ip_tbl_idx = cqp_request->compl_info.op_ret_val;
 else
  i40iw_pr_err("CQP-OP Alloc MAC Ip entry fail");

 i40iw_put_cqp_request(iwcqp, cqp_request);
 return status;
}
