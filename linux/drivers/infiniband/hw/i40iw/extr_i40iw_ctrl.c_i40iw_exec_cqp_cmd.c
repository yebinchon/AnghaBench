
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_68__ TYPE_9__ ;
typedef struct TYPE_67__ TYPE_8__ ;
typedef struct TYPE_66__ TYPE_7__ ;
typedef struct TYPE_65__ TYPE_6__ ;
typedef struct TYPE_64__ TYPE_5__ ;
typedef struct TYPE_63__ TYPE_4__ ;
typedef struct TYPE_62__ TYPE_3__ ;
typedef struct TYPE_61__ TYPE_34__ ;
typedef struct TYPE_60__ TYPE_33__ ;
typedef struct TYPE_59__ TYPE_32__ ;
typedef struct TYPE_58__ TYPE_31__ ;
typedef struct TYPE_57__ TYPE_30__ ;
typedef struct TYPE_56__ TYPE_2__ ;
typedef struct TYPE_55__ TYPE_29__ ;
typedef struct TYPE_54__ TYPE_28__ ;
typedef struct TYPE_53__ TYPE_27__ ;
typedef struct TYPE_52__ TYPE_26__ ;
typedef struct TYPE_51__ TYPE_25__ ;
typedef struct TYPE_50__ TYPE_24__ ;
typedef struct TYPE_49__ TYPE_23__ ;
typedef struct TYPE_48__ TYPE_22__ ;
typedef struct TYPE_47__ TYPE_21__ ;
typedef struct TYPE_46__ TYPE_20__ ;
typedef struct TYPE_45__ TYPE_1__ ;
typedef struct TYPE_44__ TYPE_19__ ;
typedef struct TYPE_43__ TYPE_18__ ;
typedef struct TYPE_42__ TYPE_17__ ;
typedef struct TYPE_41__ TYPE_16__ ;
typedef struct TYPE_40__ TYPE_15__ ;
typedef struct TYPE_39__ TYPE_14__ ;
typedef struct TYPE_38__ TYPE_13__ ;
typedef struct TYPE_37__ TYPE_12__ ;
typedef struct TYPE_36__ TYPE_11__ ;
typedef struct TYPE_35__ TYPE_10__ ;


typedef int u8 ;
struct i40iw_sc_dev {int * cqp_cmd_stats; } ;
struct i40iw_dma_mem {int va; int pa; } ;
struct TYPE_59__ {int hmc_fn_id; int scratch; int cqp; int fpm_values_va; int fpm_values_pa; } ;
struct TYPE_58__ {int hmc_fn_id; int scratch; int cqp; int fpm_values_va; int fpm_values_pa; } ;
struct TYPE_57__ {int scratch; int info; int cqp; } ;
struct TYPE_55__ {int scratch; int qp; int cqp; } ;
struct TYPE_53__ {int free_fcn; int vf_id; } ;
struct TYPE_54__ {TYPE_27__ info; int scratch; TYPE_26__* dev; } ;
struct TYPE_51__ {int scratch; int info; int dev; } ;
struct TYPE_50__ {int scratch; int info; int cqp; } ;
struct TYPE_49__ {int scratch; int info; int cqp; } ;
struct TYPE_48__ {int scratch; int info; int qp; } ;
struct TYPE_47__ {int scratch; int info; int qp; } ;
struct TYPE_46__ {int pd_id; int mw_stag_index; int scratch; int dev; } ;
struct TYPE_44__ {int scratch; int info; int dev; } ;
struct TYPE_43__ {int scratch; int info; int dev; } ;
struct TYPE_42__ {int scratch; int info; int dev; } ;
struct TYPE_41__ {int ignore_mw_bnd; int remove_hash_idx; int scratch; int qp; } ;
struct TYPE_40__ {int scratch; int info; int qp; } ;
struct TYPE_39__ {int scratch; int cq; } ;
struct TYPE_38__ {int check_overflow; int scratch; int cq; } ;
struct TYPE_37__ {int scratch; int info; int dev; } ;
struct TYPE_36__ {int scratch; int info; int qp; } ;
struct TYPE_35__ {int scratch; int info; int cqp; } ;
struct TYPE_68__ {int scratch; int info; int cqp; } ;
struct TYPE_67__ {int scratch; int cqp; } ;
struct TYPE_66__ {int scratch; int aeq; } ;
struct TYPE_65__ {int scratch; int ceq; } ;
struct TYPE_64__ {int scratch; int info; int cqp; } ;
struct TYPE_63__ {int arp_index; int scratch; int cqp; } ;
struct TYPE_62__ {int scratch; int aeq; } ;
struct TYPE_56__ {int scratch; int ceq; } ;
struct TYPE_45__ {int ignore_ref_count; int entry_idx; int scratch; int cqp; } ;
struct TYPE_60__ {TYPE_32__ commit_fpm_values; TYPE_31__ query_fpm_values; TYPE_30__ manage_vf_pble_bp; TYPE_29__ suspend_resume; TYPE_28__ manage_hmc_pm; TYPE_25__ update_pe_sds; TYPE_24__ manage_push_page; TYPE_23__ add_arp_cache_entry; TYPE_22__ gen_ae; TYPE_21__ qp_flush_wqes; TYPE_20__ mw_alloc; TYPE_19__ dealloc_stag; TYPE_18__ mr_reg_non_shared; TYPE_17__ alloc_stag; TYPE_16__ qp_destroy; TYPE_15__ qp_create; TYPE_14__ cq_destroy; TYPE_13__ cq_create; TYPE_12__ qp_upload_context; TYPE_11__ qp_modify; TYPE_10__ manage_qhash_table_entry; TYPE_9__ add_local_mac_ipaddr_entry; TYPE_8__ alloc_local_mac_ipaddr_entry; TYPE_7__ aeq_create; TYPE_6__ ceq_create; TYPE_5__ manage_apbvt_entry; TYPE_4__ del_arp_cache_entry; TYPE_3__ aeq_destroy; TYPE_2__ ceq_destroy; TYPE_1__ del_local_mac_ipaddr_entry; } ;
struct TYPE_61__ {TYPE_33__ u; } ;
struct cqp_commands_info {size_t cqp_cmd; TYPE_34__ in; int post_sq; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_52__ {int cqp; } ;


 int I40IW_CQP_WAIT_EVENT ;
 int I40IW_NOT_SUPPORTED ;
 int i40iw_manage_vf_pble_bp (int ,int *,int ,int) ;
 int i40iw_sc_add_arp_cache_entry (int ,int *,int ,int ) ;
 int i40iw_sc_add_local_mac_ipaddr_entry (int ,int *,int ,int ) ;
 int i40iw_sc_aeq_create (int ,int ,int ) ;
 int i40iw_sc_aeq_destroy (int ,int ,int ) ;
 int i40iw_sc_alloc_local_mac_ipaddr_entry (int ,int ,int ) ;
 int i40iw_sc_alloc_stag (int ,int *,int ,int ) ;
 int i40iw_sc_ceq_create (int ,int ,int ) ;
 int i40iw_sc_ceq_destroy (int ,int ,int ) ;
 int i40iw_sc_commit_fpm_values (int ,int ,int ,struct i40iw_dma_mem*,int,int ) ;
 int i40iw_sc_cq_create (int ,int ,int ,int ) ;
 int i40iw_sc_cq_destroy (int ,int ,int ) ;
 int i40iw_sc_dealloc_stag (int ,int *,int ,int ) ;
 int i40iw_sc_del_arp_cache_entry (int ,int ,int ,int ) ;
 int i40iw_sc_del_local_mac_ipaddr_entry (int ,int ,int ,int ,int ) ;
 int i40iw_sc_gen_ae (int ,int *,int ,int ) ;
 int i40iw_sc_manage_apbvt_entry (int ,int *,int ,int ) ;
 int i40iw_sc_manage_hmc_pm_func_table (int ,int ,int ,int ,int) ;
 int i40iw_sc_manage_push_page (int ,int *,int ,int ) ;
 int i40iw_sc_manage_qhash_table_entry (int ,int *,int ,int ) ;
 int i40iw_sc_mr_reg_non_shared (int ,int *,int ,int ) ;
 int i40iw_sc_mw_alloc (int ,int ,int ,int ,int ) ;
 int i40iw_sc_qp_create (int ,int *,int ,int ) ;
 int i40iw_sc_qp_destroy (int ,int ,int ,int ,int ) ;
 int i40iw_sc_qp_flush_wqes (int ,int *,int ,int ) ;
 int i40iw_sc_qp_modify (int ,int *,int ,int ) ;
 int i40iw_sc_qp_upload_context (int ,int *,int ,int ) ;
 int i40iw_sc_query_fpm_values (int ,int ,int ,struct i40iw_dma_mem*,int,int ) ;
 int i40iw_sc_resume_qp (int ,int ,int ) ;
 int i40iw_sc_suspend_qp (int ,int ,int ) ;
 int i40iw_update_pe_sds (int ,int *,int ) ;

__attribute__((used)) static enum i40iw_status_code i40iw_exec_cqp_cmd(struct i40iw_sc_dev *dev,
       struct cqp_commands_info *pcmdinfo)
{
 enum i40iw_status_code status;
 struct i40iw_dma_mem values_mem;

 dev->cqp_cmd_stats[pcmdinfo->cqp_cmd]++;
 switch (pcmdinfo->cqp_cmd) {
 case 145:
  status = i40iw_sc_del_local_mac_ipaddr_entry(
    pcmdinfo->in.u.del_local_mac_ipaddr_entry.cqp,
    pcmdinfo->in.u.del_local_mac_ipaddr_entry.scratch,
    pcmdinfo->in.u.del_local_mac_ipaddr_entry.entry_idx,
    pcmdinfo->in.u.del_local_mac_ipaddr_entry.ignore_ref_count,
    pcmdinfo->post_sq);
  break;
 case 151:
  status = i40iw_sc_ceq_destroy(pcmdinfo->in.u.ceq_destroy.ceq,
           pcmdinfo->in.u.ceq_destroy.scratch,
           pcmdinfo->post_sq);
  break;
 case 155:
  status = i40iw_sc_aeq_destroy(pcmdinfo->in.u.aeq_destroy.aeq,
           pcmdinfo->in.u.aeq_destroy.scratch,
           pcmdinfo->post_sq);

  break;
 case 146:
  status = i40iw_sc_del_arp_cache_entry(
    pcmdinfo->in.u.del_arp_cache_entry.cqp,
    pcmdinfo->in.u.del_arp_cache_entry.scratch,
    pcmdinfo->in.u.del_arp_cache_entry.arp_index,
    pcmdinfo->post_sq);
  break;
 case 143:
  status = i40iw_sc_manage_apbvt_entry(
    pcmdinfo->in.u.manage_apbvt_entry.cqp,
    &pcmdinfo->in.u.manage_apbvt_entry.info,
    pcmdinfo->in.u.manage_apbvt_entry.scratch,
    pcmdinfo->post_sq);
  break;
 case 152:
  status = i40iw_sc_ceq_create(pcmdinfo->in.u.ceq_create.ceq,
          pcmdinfo->in.u.ceq_create.scratch,
          pcmdinfo->post_sq);
  break;
 case 156:
  status = i40iw_sc_aeq_create(pcmdinfo->in.u.aeq_create.aeq,
          pcmdinfo->in.u.aeq_create.scratch,
          pcmdinfo->post_sq);
  break;
 case 154:
  status = i40iw_sc_alloc_local_mac_ipaddr_entry(
    pcmdinfo->in.u.alloc_local_mac_ipaddr_entry.cqp,
    pcmdinfo->in.u.alloc_local_mac_ipaddr_entry.scratch,
    pcmdinfo->post_sq);
  break;
 case 157:
  status = i40iw_sc_add_local_mac_ipaddr_entry(
    pcmdinfo->in.u.add_local_mac_ipaddr_entry.cqp,
    &pcmdinfo->in.u.add_local_mac_ipaddr_entry.info,
    pcmdinfo->in.u.add_local_mac_ipaddr_entry.scratch,
    pcmdinfo->post_sq);
  break;
 case 140:
  status = i40iw_sc_manage_qhash_table_entry(
    pcmdinfo->in.u.manage_qhash_table_entry.cqp,
    &pcmdinfo->in.u.manage_qhash_table_entry.info,
    pcmdinfo->in.u.manage_qhash_table_entry.scratch,
    pcmdinfo->post_sq);

  break;
 case 133:
  status = i40iw_sc_qp_modify(
    pcmdinfo->in.u.qp_modify.qp,
    &pcmdinfo->in.u.qp_modify.info,
    pcmdinfo->in.u.qp_modify.scratch,
    pcmdinfo->post_sq);

  break;
 case 132:
  status = i40iw_sc_qp_upload_context(
    pcmdinfo->in.u.qp_upload_context.dev,
    &pcmdinfo->in.u.qp_upload_context.info,
    pcmdinfo->in.u.qp_upload_context.scratch,
    pcmdinfo->post_sq);

  break;
 case 149:
  status = i40iw_sc_cq_create(
    pcmdinfo->in.u.cq_create.cq,
    pcmdinfo->in.u.cq_create.scratch,
    pcmdinfo->in.u.cq_create.check_overflow,
    pcmdinfo->post_sq);
  break;
 case 148:
  status = i40iw_sc_cq_destroy(
    pcmdinfo->in.u.cq_destroy.cq,
    pcmdinfo->in.u.cq_destroy.scratch,
    pcmdinfo->post_sq);

  break;
 case 136:
  status = i40iw_sc_qp_create(
    pcmdinfo->in.u.qp_create.qp,
    &pcmdinfo->in.u.qp_create.info,
    pcmdinfo->in.u.qp_create.scratch,
    pcmdinfo->post_sq);
  break;
 case 135:
  status = i40iw_sc_qp_destroy(
    pcmdinfo->in.u.qp_destroy.qp,
    pcmdinfo->in.u.qp_destroy.scratch,
    pcmdinfo->in.u.qp_destroy.remove_hash_idx,
    pcmdinfo->in.u.qp_destroy.
    ignore_mw_bnd,
    pcmdinfo->post_sq);

  break;
 case 153:
  status = i40iw_sc_alloc_stag(
    pcmdinfo->in.u.alloc_stag.dev,
    &pcmdinfo->in.u.alloc_stag.info,
    pcmdinfo->in.u.alloc_stag.scratch,
    pcmdinfo->post_sq);
  break;
 case 138:
  status = i40iw_sc_mr_reg_non_shared(
    pcmdinfo->in.u.mr_reg_non_shared.dev,
    &pcmdinfo->in.u.mr_reg_non_shared.info,
    pcmdinfo->in.u.mr_reg_non_shared.scratch,
    pcmdinfo->post_sq);

  break;
 case 147:
  status = i40iw_sc_dealloc_stag(
    pcmdinfo->in.u.dealloc_stag.dev,
    &pcmdinfo->in.u.dealloc_stag.info,
    pcmdinfo->in.u.dealloc_stag.scratch,
    pcmdinfo->post_sq);

  break;
 case 137:
  status = i40iw_sc_mw_alloc(
    pcmdinfo->in.u.mw_alloc.dev,
    pcmdinfo->in.u.mw_alloc.scratch,
    pcmdinfo->in.u.mw_alloc.mw_stag_index,
    pcmdinfo->in.u.mw_alloc.pd_id,
    pcmdinfo->post_sq);

  break;
 case 134:
  status = i40iw_sc_qp_flush_wqes(
    pcmdinfo->in.u.qp_flush_wqes.qp,
    &pcmdinfo->in.u.qp_flush_wqes.info,
    pcmdinfo->in.u.qp_flush_wqes.
    scratch, pcmdinfo->post_sq);
  break;
 case 144:
  status = i40iw_sc_gen_ae(
    pcmdinfo->in.u.gen_ae.qp,
    &pcmdinfo->in.u.gen_ae.info,
    pcmdinfo->in.u.gen_ae.scratch,
    pcmdinfo->post_sq);
  break;
 case 158:
  status = i40iw_sc_add_arp_cache_entry(
    pcmdinfo->in.u.add_arp_cache_entry.cqp,
    &pcmdinfo->in.u.add_arp_cache_entry.info,
    pcmdinfo->in.u.add_arp_cache_entry.scratch,
    pcmdinfo->post_sq);
  break;
 case 141:
  status = i40iw_sc_manage_push_page(
    pcmdinfo->in.u.manage_push_page.cqp,
    &pcmdinfo->in.u.manage_push_page.info,
    pcmdinfo->in.u.manage_push_page.scratch,
    pcmdinfo->post_sq);
  break;
 case 128:

  status = i40iw_update_pe_sds(
    pcmdinfo->in.u.update_pe_sds.dev,
    &pcmdinfo->in.u.update_pe_sds.info,
    pcmdinfo->in.u.update_pe_sds.
    scratch);

  break;
 case 142:
  status = i40iw_sc_manage_hmc_pm_func_table(
    pcmdinfo->in.u.manage_hmc_pm.dev->cqp,
    pcmdinfo->in.u.manage_hmc_pm.scratch,
    (u8)pcmdinfo->in.u.manage_hmc_pm.info.vf_id,
    pcmdinfo->in.u.manage_hmc_pm.info.free_fcn,
    1);
  break;
 case 129:
  status = i40iw_sc_suspend_qp(
    pcmdinfo->in.u.suspend_resume.cqp,
    pcmdinfo->in.u.suspend_resume.qp,
    pcmdinfo->in.u.suspend_resume.scratch);
  break;
 case 130:
  status = i40iw_sc_resume_qp(
    pcmdinfo->in.u.suspend_resume.cqp,
    pcmdinfo->in.u.suspend_resume.qp,
    pcmdinfo->in.u.suspend_resume.scratch);
  break;
 case 139:
  status = i40iw_manage_vf_pble_bp(
    pcmdinfo->in.u.manage_vf_pble_bp.cqp,
    &pcmdinfo->in.u.manage_vf_pble_bp.info,
    pcmdinfo->in.u.manage_vf_pble_bp.scratch, 1);
  break;
 case 131:
  values_mem.pa = pcmdinfo->in.u.query_fpm_values.fpm_values_pa;
  values_mem.va = pcmdinfo->in.u.query_fpm_values.fpm_values_va;
  status = i40iw_sc_query_fpm_values(
    pcmdinfo->in.u.query_fpm_values.cqp,
    pcmdinfo->in.u.query_fpm_values.scratch,
    pcmdinfo->in.u.query_fpm_values.hmc_fn_id,
    &values_mem, 1, I40IW_CQP_WAIT_EVENT);
  break;
 case 150:
  values_mem.pa = pcmdinfo->in.u.commit_fpm_values.fpm_values_pa;
  values_mem.va = pcmdinfo->in.u.commit_fpm_values.fpm_values_va;
  status = i40iw_sc_commit_fpm_values(
    pcmdinfo->in.u.commit_fpm_values.cqp,
    pcmdinfo->in.u.commit_fpm_values.scratch,
    pcmdinfo->in.u.commit_fpm_values.hmc_fn_id,
    &values_mem,
    1,
    I40IW_CQP_WAIT_EVENT);
  break;
 default:
  status = I40IW_NOT_SUPPORTED;
  break;
 }

 return status;
}
