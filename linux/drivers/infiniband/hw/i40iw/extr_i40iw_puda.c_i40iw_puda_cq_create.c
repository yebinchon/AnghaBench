
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct i40iw_sc_dev {int hw; scalar_t__ ceq_valid; TYPE_1__* iw_priv_cq_ops; } ;
struct i40iw_sc_cq {int vsi; } ;
struct i40iw_dma_mem {scalar_t__ va; scalar_t__ pa; } ;
struct i40iw_puda_rsrc {int cq_size; scalar_t__ type; struct i40iw_dma_mem cqmem; struct i40iw_sc_dev* dev; int cq_id; int vsi; struct i40iw_sc_cq cq; } ;
struct i40iw_cqe {int dummy; } ;
struct i40iw_cq_uk_init_info {int cq_size; int cq_id; int * shadow_area; scalar_t__ cq_base; } ;
struct i40iw_cq_shadow_area {int dummy; } ;
struct i40iw_cq_init_info {int shadow_read_threshold; int ceq_id_valid; int ceqe_mask; scalar_t__ shadow_area_pa; scalar_t__ cq_base_pa; int type; struct i40iw_sc_dev* dev; struct i40iw_cq_uk_init_info cq_uk_init_info; } ;
typedef int info ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_2__ {int (* cq_init ) (struct i40iw_sc_cq*,struct i40iw_cq_init_info*) ;} ;


 int I40IW_CQ0_ALIGNMENT ;
 int I40IW_CQ_TYPE_IEQ ;
 int I40IW_CQ_TYPE_ILQ ;
 scalar_t__ I40IW_PUDA_RSRC_TYPE_ILQ ;
 int i40iw_allocate_dma_mem (int ,struct i40iw_dma_mem*,int,int ) ;
 int i40iw_cqp_cq_create_cmd (struct i40iw_sc_dev*,struct i40iw_sc_cq*) ;
 int i40iw_free_dma_mem (int ,struct i40iw_dma_mem*) ;
 int i40iw_puda_cq_wqe (struct i40iw_sc_dev*,struct i40iw_sc_cq*) ;
 int memset (struct i40iw_cq_init_info*,int ,int) ;
 int stub1 (struct i40iw_sc_cq*,struct i40iw_cq_init_info*) ;

__attribute__((used)) static enum i40iw_status_code i40iw_puda_cq_create(struct i40iw_puda_rsrc *rsrc)
{
 struct i40iw_sc_dev *dev = rsrc->dev;
 struct i40iw_sc_cq *cq = &rsrc->cq;
 enum i40iw_status_code ret = 0;
 u32 tsize, cqsize;
 struct i40iw_dma_mem *mem;
 struct i40iw_cq_init_info info;
 struct i40iw_cq_uk_init_info *init_info = &info.cq_uk_init_info;

 cq->vsi = rsrc->vsi;
 cqsize = rsrc->cq_size * (sizeof(struct i40iw_cqe));
 tsize = cqsize + sizeof(struct i40iw_cq_shadow_area);
 ret = i40iw_allocate_dma_mem(dev->hw, &rsrc->cqmem, tsize,
         I40IW_CQ0_ALIGNMENT);
 if (ret)
  return ret;

 mem = &rsrc->cqmem;
 memset(&info, 0, sizeof(info));
 info.dev = dev;
 info.type = (rsrc->type == I40IW_PUDA_RSRC_TYPE_ILQ) ?
    I40IW_CQ_TYPE_ILQ : I40IW_CQ_TYPE_IEQ;
 info.shadow_read_threshold = rsrc->cq_size >> 2;
 info.ceq_id_valid = 1;
 info.cq_base_pa = mem->pa;
 info.shadow_area_pa = mem->pa + cqsize;
 init_info->cq_base = mem->va;
 init_info->shadow_area = (u64 *)((u8 *)mem->va + cqsize);
 init_info->cq_size = rsrc->cq_size;
 init_info->cq_id = rsrc->cq_id;
 info.ceqe_mask = 1;
 info.ceq_id_valid = 1;
 ret = dev->iw_priv_cq_ops->cq_init(cq, &info);
 if (ret)
  goto error;
 if (rsrc->dev->ceq_valid)
  ret = i40iw_cqp_cq_create_cmd(dev, cq);
 else
  ret = i40iw_puda_cq_wqe(dev, cq);
error:
 if (ret)
  i40iw_free_dma_mem(dev->hw, &rsrc->cqmem);
 return ret;
}
