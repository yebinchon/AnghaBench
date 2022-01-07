
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rdma_sq_sge {void* length; void* l_key; int addr; } ;
struct TYPE_3__ {int pbl; } ;
struct qedr_qp {TYPE_1__ sq; } ;
struct ib_send_wr {int num_sge; TYPE_2__* sg_list; } ;
struct TYPE_4__ {scalar_t__ length; scalar_t__ lkey; int addr; } ;


 int DMA_REGPAIR_LE (int ,int ) ;
 void* cpu_to_le32 (scalar_t__) ;
 struct rdma_sq_sge* qed_chain_produce (int *) ;

__attribute__((used)) static u32 qedr_prepare_sq_sges(struct qedr_qp *qp, u8 *wqe_size,
    const struct ib_send_wr *wr)
{
 u32 data_size = 0;
 int i;

 for (i = 0; i < wr->num_sge; i++) {
  struct rdma_sq_sge *sge = qed_chain_produce(&qp->sq.pbl);

  DMA_REGPAIR_LE(sge->addr, wr->sg_list[i].addr);
  sge->l_key = cpu_to_le32(wr->sg_list[i].lkey);
  sge->length = cpu_to_le32(wr->sg_list[i].length);
  data_size += wr->sg_list[i].length;
 }

 if (wqe_size)
  *wqe_size += wr->num_sge;

 return data_size;
}
