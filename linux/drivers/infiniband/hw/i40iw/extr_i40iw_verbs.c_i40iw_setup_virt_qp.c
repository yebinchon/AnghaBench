
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int addr; int idx; } ;
struct TYPE_3__ {int addr; int idx; } ;
struct i40iw_qp_mr {TYPE_2__ rq_pbl; TYPE_1__ sq_pbl; int shadow; int sq_page; } ;
struct i40iw_qp_init_info {int virtual_map; int rq_pa; int sq_pa; int shadow_area_pa; } ;
struct i40iw_pbl {scalar_t__ pbl_allocated; struct i40iw_qp_mr qp_mr; } ;
struct i40iw_qp {int page; struct i40iw_pbl iwpbl; } ;
struct i40iw_device {int dummy; } ;


 int cpu_to_le64 (int ) ;

__attribute__((used)) static int i40iw_setup_virt_qp(struct i40iw_device *iwdev,
          struct i40iw_qp *iwqp,
          struct i40iw_qp_init_info *init_info)
{
 struct i40iw_pbl *iwpbl = &iwqp->iwpbl;
 struct i40iw_qp_mr *qpmr = &iwpbl->qp_mr;

 iwqp->page = qpmr->sq_page;
 init_info->shadow_area_pa = cpu_to_le64(qpmr->shadow);
 if (iwpbl->pbl_allocated) {
  init_info->virtual_map = 1;
  init_info->sq_pa = qpmr->sq_pbl.idx;
  init_info->rq_pa = qpmr->rq_pbl.idx;
 } else {
  init_info->sq_pa = qpmr->sq_pbl.addr;
  init_info->rq_pa = qpmr->rq_pbl.addr;
 }
 return 0;
}
