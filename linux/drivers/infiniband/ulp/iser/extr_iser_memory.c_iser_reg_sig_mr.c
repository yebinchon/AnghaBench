
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ send_flags; scalar_t__ num_sge; struct ib_cqe* wr_cqe; int opcode; int * next; } ;
struct ib_sig_attrs {int access; int key; struct ib_mr* mr; TYPE_4__ wr; int check_mask; } ;
struct iser_tx_desc {int send_wr; int inv_wr; struct ib_sig_attrs reg_wr; } ;
struct iser_reg_resources {int mr_valid; struct ib_mr* sig_mr; } ;
struct TYPE_7__ {int length; int addr; int lkey; } ;
struct iser_mem_reg {TYPE_3__ sge; int rkey; } ;
struct iser_data_buf {scalar_t__ dma_nents; int sg; } ;
struct iscsi_iser_task {int sc; TYPE_2__* iser_conn; struct iser_tx_desc desc; } ;
struct ib_reg_wr {int access; int key; struct ib_mr* mr; TYPE_4__ wr; int check_mask; } ;
struct ib_mr {int length; int iova; int rkey; int lkey; struct ib_sig_attrs* sig_attrs; } ;
struct ib_cqe {int dummy; } ;
struct TYPE_5__ {struct ib_cqe reg_cqe; } ;
struct TYPE_6__ {TYPE_1__ ib_conn; } ;


 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int IB_WR_REG_MR_INTEGRITY ;
 int SZ_4K ;
 int ib_inc_rkey (int ) ;
 int ib_map_mr_sg_pi (struct ib_mr*,int ,scalar_t__,int *,int ,scalar_t__,int *,int ) ;
 int ib_update_fast_reg_key (struct ib_mr*,int ) ;
 int iser_dbg (char*,int ,int ,int ,int ) ;
 int iser_err (char*,scalar_t__) ;
 int iser_inv_rkey (int *,struct ib_mr*,struct ib_cqe*,TYPE_4__*) ;
 int iser_set_prot_checks (int ,int *) ;
 int iser_set_sig_attrs (int ,struct ib_sig_attrs*) ;
 int memset (struct ib_sig_attrs*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
iser_reg_sig_mr(struct iscsi_iser_task *iser_task,
  struct iser_data_buf *mem,
  struct iser_data_buf *sig_mem,
  struct iser_reg_resources *rsc,
  struct iser_mem_reg *sig_reg)
{
 struct iser_tx_desc *tx_desc = &iser_task->desc;
 struct ib_cqe *cqe = &iser_task->iser_conn->ib_conn.reg_cqe;
 struct ib_mr *mr = rsc->sig_mr;
 struct ib_sig_attrs *sig_attrs = mr->sig_attrs;
 struct ib_reg_wr *wr = &tx_desc->reg_wr;
 int ret;

 memset(sig_attrs, 0, sizeof(*sig_attrs));
 ret = iser_set_sig_attrs(iser_task->sc, sig_attrs);
 if (ret)
  goto err;

 iser_set_prot_checks(iser_task->sc, &sig_attrs->check_mask);

 if (rsc->mr_valid)
  iser_inv_rkey(&tx_desc->inv_wr, mr, cqe, &wr->wr);

 ib_update_fast_reg_key(mr, ib_inc_rkey(mr->rkey));

 ret = ib_map_mr_sg_pi(mr, mem->sg, mem->dma_nents, ((void*)0),
         sig_mem->sg, sig_mem->dma_nents, ((void*)0), SZ_4K);
 if (unlikely(ret)) {
  iser_err("failed to map PI sg (%d)\n",
    mem->dma_nents + sig_mem->dma_nents);
  goto err;
 }

 memset(wr, 0, sizeof(*wr));
 wr->wr.next = &tx_desc->send_wr;
 wr->wr.opcode = IB_WR_REG_MR_INTEGRITY;
 wr->wr.wr_cqe = cqe;
 wr->wr.num_sge = 0;
 wr->wr.send_flags = 0;
 wr->mr = mr;
 wr->key = mr->rkey;
 wr->access = IB_ACCESS_LOCAL_WRITE |
       IB_ACCESS_REMOTE_READ |
       IB_ACCESS_REMOTE_WRITE;
 rsc->mr_valid = 1;

 sig_reg->sge.lkey = mr->lkey;
 sig_reg->rkey = mr->rkey;
 sig_reg->sge.addr = mr->iova;
 sig_reg->sge.length = mr->length;

 iser_dbg("lkey=0x%x rkey=0x%x addr=0x%llx length=%u\n",
   sig_reg->sge.lkey, sig_reg->rkey, sig_reg->sge.addr,
   sig_reg->sge.length);
err:
 return ret;
}
