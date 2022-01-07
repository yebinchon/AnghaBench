
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int wq_num; void* wqe_index; void* packet_size; } ;
struct TYPE_8__ {int r_key; int rdma_op_len; int rdma_va; void* packet_size; } ;
struct mlx5_pagefault {int event_subtype; int bytes_committed; int type; int token; int work; struct mlx5_ib_pf_eq* eq; TYPE_5__ wqe; TYPE_3__ rdma; } ;
struct mlx5_ib_pf_eq {int core; int wq; int dev; int work; int pool; } ;
struct TYPE_9__ {int packet_length; int wqe_index; int pftype_wq; int token; } ;
struct TYPE_7__ {int rdma_va; int rdma_op_len; int packet_length; int r_key; int pftype_token; } ;
struct mlx5_eqe_page_fault {TYPE_4__ wqe; TYPE_2__ rdma; int bytes_committed; } ;
struct TYPE_6__ {struct mlx5_eqe_page_fault page_fault; } ;
struct mlx5_eqe {int sub_type; TYPE_1__ data; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int MLX5_24BIT_MASK ;


 void* be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 struct mlx5_pagefault* mempool_alloc (int ,int ) ;
 struct mlx5_eqe* mlx5_eq_get_eqe (int ,int) ;
 int mlx5_eq_update_cc (int ,int) ;
 int mlx5_eq_update_ci (int ,int,int) ;
 int mlx5_ib_dbg (int ,char*,int,int,...) ;
 int mlx5_ib_eqe_pf_action ;
 int mlx5_ib_warn (int ,char*,int) ;
 int queue_work (int ,int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static void mlx5_ib_eq_pf_process(struct mlx5_ib_pf_eq *eq)
{
 struct mlx5_eqe_page_fault *pf_eqe;
 struct mlx5_pagefault *pfault;
 struct mlx5_eqe *eqe;
 int cc = 0;

 while ((eqe = mlx5_eq_get_eqe(eq->core, cc))) {
  pfault = mempool_alloc(eq->pool, GFP_ATOMIC);
  if (!pfault) {
   schedule_work(&eq->work);
   break;
  }

  pf_eqe = &eqe->data.page_fault;
  pfault->event_subtype = eqe->sub_type;
  pfault->bytes_committed = be32_to_cpu(pf_eqe->bytes_committed);

  mlx5_ib_dbg(eq->dev,
       "PAGE_FAULT: subtype: 0x%02x, bytes_committed: 0x%06x\n",
       eqe->sub_type, pfault->bytes_committed);

  switch (eqe->sub_type) {
  case 129:

   pfault->type =
    be32_to_cpu(pf_eqe->rdma.pftype_token) >> 24;
   pfault->token =
    be32_to_cpu(pf_eqe->rdma.pftype_token) &
    MLX5_24BIT_MASK;
   pfault->rdma.r_key =
    be32_to_cpu(pf_eqe->rdma.r_key);
   pfault->rdma.packet_size =
    be16_to_cpu(pf_eqe->rdma.packet_length);
   pfault->rdma.rdma_op_len =
    be32_to_cpu(pf_eqe->rdma.rdma_op_len);
   pfault->rdma.rdma_va =
    be64_to_cpu(pf_eqe->rdma.rdma_va);
   mlx5_ib_dbg(eq->dev,
        "PAGE_FAULT: type:0x%x, token: 0x%06x, r_key: 0x%08x\n",
        pfault->type, pfault->token,
        pfault->rdma.r_key);
   mlx5_ib_dbg(eq->dev,
        "PAGE_FAULT: rdma_op_len: 0x%08x, rdma_va: 0x%016llx\n",
        pfault->rdma.rdma_op_len,
        pfault->rdma.rdma_va);
   break;

  case 128:

   pfault->type =
    (be32_to_cpu(pf_eqe->wqe.pftype_wq) >> 24) & 0x7;
   pfault->token =
    be32_to_cpu(pf_eqe->wqe.token);
   pfault->wqe.wq_num =
    be32_to_cpu(pf_eqe->wqe.pftype_wq) &
    MLX5_24BIT_MASK;
   pfault->wqe.wqe_index =
    be16_to_cpu(pf_eqe->wqe.wqe_index);
   pfault->wqe.packet_size =
    be16_to_cpu(pf_eqe->wqe.packet_length);
   mlx5_ib_dbg(eq->dev,
        "PAGE_FAULT: type:0x%x, token: 0x%06x, wq_num: 0x%06x, wqe_index: 0x%04x\n",
        pfault->type, pfault->token,
        pfault->wqe.wq_num,
        pfault->wqe.wqe_index);
   break;

  default:
   mlx5_ib_warn(eq->dev,
         "Unsupported page fault event sub-type: 0x%02hhx\n",
         eqe->sub_type);



  }

  pfault->eq = eq;
  INIT_WORK(&pfault->work, mlx5_ib_eqe_pf_action);
  queue_work(eq->wq, &pfault->work);

  cc = mlx5_eq_update_cc(eq->core, ++cc);
 }

 mlx5_eq_update_ci(eq->core, cc, 1);
}
