
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct i40iw_sc_ceq {int size; size_t ceq_id; scalar_t__ elem_cnt; scalar_t__ first_pm_pbl_idx; int polarity; TYPE_3__* dev; int ceq_ring; int tph_val; int tph_en; scalar_t__ virtual_map; int * pbl_list; int pbl_chunk_size; int ceq_elem_pa; struct i40iw_ceqe* ceqe_base; } ;
struct i40iw_ceqe {int dummy; } ;
struct i40iw_ceq_init_info {scalar_t__ elem_cnt; size_t ceq_id; scalar_t__ first_pm_pbl_idx; int tph_val; int tph_en; int * pbl_list; int pbl_chunk_size; scalar_t__ virtual_map; int ceqe_pa; TYPE_3__* dev; scalar_t__ ceqe_base; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_6__ {struct i40iw_sc_ceq** ceq; TYPE_2__* hmc_info; } ;
struct TYPE_5__ {TYPE_1__* hmc_obj; } ;
struct TYPE_4__ {scalar_t__ cnt; } ;


 int I40IW_ERR_INVALID_CEQ_ID ;
 int I40IW_ERR_INVALID_PBLE_INDEX ;
 int I40IW_ERR_INVALID_SIZE ;
 size_t I40IW_HMC_IW_PBLE ;
 size_t I40IW_MAX_CEQID ;
 scalar_t__ I40IW_MAX_CEQ_ENTRIES ;
 scalar_t__ I40IW_MIN_CEQ_ENTRIES ;
 int I40IW_RING_INIT (int ,scalar_t__) ;

__attribute__((used)) static enum i40iw_status_code i40iw_sc_ceq_init(struct i40iw_sc_ceq *ceq,
      struct i40iw_ceq_init_info *info)
{
 u32 pble_obj_cnt;

 if ((info->elem_cnt < I40IW_MIN_CEQ_ENTRIES) ||
     (info->elem_cnt > I40IW_MAX_CEQ_ENTRIES))
  return I40IW_ERR_INVALID_SIZE;

 if (info->ceq_id >= I40IW_MAX_CEQID)
  return I40IW_ERR_INVALID_CEQ_ID;

 pble_obj_cnt = info->dev->hmc_info->hmc_obj[I40IW_HMC_IW_PBLE].cnt;

 if (info->virtual_map && (info->first_pm_pbl_idx >= pble_obj_cnt))
  return I40IW_ERR_INVALID_PBLE_INDEX;

 ceq->size = sizeof(*ceq);
 ceq->ceqe_base = (struct i40iw_ceqe *)info->ceqe_base;
 ceq->ceq_id = info->ceq_id;
 ceq->dev = info->dev;
 ceq->elem_cnt = info->elem_cnt;
 ceq->ceq_elem_pa = info->ceqe_pa;
 ceq->virtual_map = info->virtual_map;

 ceq->pbl_chunk_size = (ceq->virtual_map ? info->pbl_chunk_size : 0);
 ceq->first_pm_pbl_idx = (ceq->virtual_map ? info->first_pm_pbl_idx : 0);
 ceq->pbl_list = (ceq->virtual_map ? info->pbl_list : ((void*)0));

 ceq->tph_en = info->tph_en;
 ceq->tph_val = info->tph_val;
 ceq->polarity = 1;
 I40IW_RING_INIT(ceq->ceq_ring, ceq->elem_cnt);
 ceq->dev->ceq[info->ceq_id] = ceq;

 return 0;
}
