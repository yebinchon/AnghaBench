
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int invalidate_rkey; } ;
struct TYPE_7__ {int * next; TYPE_2__ ex; int opcode; } ;
struct TYPE_5__ {int wr; } ;
struct rdma_rw_reg_ctx {TYPE_3__ inv_wr; TYPE_1__ reg_wr; TYPE_4__* mr; } ;
struct TYPE_8__ {int lkey; scalar_t__ need_inval; } ;


 int IB_WR_LOCAL_INV ;

__attribute__((used)) static inline int rdma_rw_inv_key(struct rdma_rw_reg_ctx *reg)
{
 int count = 0;

 if (reg->mr->need_inval) {
  reg->inv_wr.opcode = IB_WR_LOCAL_INV;
  reg->inv_wr.ex.invalidate_rkey = reg->mr->lkey;
  reg->inv_wr.next = &reg->reg_wr.wr;
  count++;
 } else {
  reg->inv_wr.next = ((void*)0);
 }

 return count;
}
