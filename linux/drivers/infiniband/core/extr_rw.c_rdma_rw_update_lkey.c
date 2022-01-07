
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int lkey; } ;
struct TYPE_4__ {int key; } ;
struct rdma_rw_reg_ctx {TYPE_3__* mr; TYPE_2__ sge; TYPE_1__ reg_wr; } ;
struct TYPE_6__ {int need_inval; int lkey; } ;


 int ib_inc_rkey (int ) ;
 int ib_update_fast_reg_key (TYPE_3__*,int ) ;

__attribute__((used)) static void rdma_rw_update_lkey(struct rdma_rw_reg_ctx *reg, bool need_inval)
{
 reg->mr->need_inval = need_inval;
 ib_update_fast_reg_key(reg->mr, ib_inc_rkey(reg->mr->lkey));
 reg->reg_wr.key = reg->mr->lkey;
 reg->sge.lkey = reg->mr->lkey;
}
