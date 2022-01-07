
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_19__ {int access; int key; int mr; } ;
struct TYPE_16__ {int rkey; int swap; int compare_add; int remote_addr; } ;
struct TYPE_15__ {int rkey; int remote_addr; } ;
struct TYPE_14__ {int pkey_index; int remote_qkey; int remote_qpn; } ;
struct TYPE_20__ {TYPE_6__ reg; TYPE_3__ atomic; TYPE_2__ rdma; TYPE_1__ ud; } ;
struct TYPE_17__ {int invalidate_rkey; int imm_data; } ;
struct rxe_send_wr {int opcode; TYPE_7__ wr; TYPE_4__ ex; int send_flags; int num_sge; int wr_id; } ;
struct rxe_qp {int dummy; } ;
struct TYPE_18__ {int invalidate_rkey; int imm_data; } ;
struct ib_send_wr {int opcode; TYPE_5__ ex; int send_flags; int num_sge; int wr_id; } ;
struct TYPE_22__ {int access; int key; int mr; } ;
struct TYPE_21__ {int pkey_index; int remote_qkey; int remote_qpn; } ;
struct TYPE_13__ {int rkey; int swap; int compare_add; int remote_addr; } ;
struct TYPE_12__ {int rkey; int remote_addr; } ;


 scalar_t__ IB_QPT_GSI ;
 scalar_t__ IB_QPT_SMI ;
 scalar_t__ IB_QPT_UD ;
 TYPE_11__* atomic_wr (struct ib_send_wr const*) ;
 scalar_t__ qp_type (struct rxe_qp*) ;
 TYPE_10__* rdma_wr (struct ib_send_wr const*) ;
 TYPE_9__* reg_wr (struct ib_send_wr const*) ;
 TYPE_8__* ud_wr (struct ib_send_wr const*) ;

__attribute__((used)) static void init_send_wr(struct rxe_qp *qp, struct rxe_send_wr *wr,
    const struct ib_send_wr *ibwr)
{
 wr->wr_id = ibwr->wr_id;
 wr->num_sge = ibwr->num_sge;
 wr->opcode = ibwr->opcode;
 wr->send_flags = ibwr->send_flags;

 if (qp_type(qp) == IB_QPT_UD ||
     qp_type(qp) == IB_QPT_SMI ||
     qp_type(qp) == IB_QPT_GSI) {
  wr->wr.ud.remote_qpn = ud_wr(ibwr)->remote_qpn;
  wr->wr.ud.remote_qkey = ud_wr(ibwr)->remote_qkey;
  if (qp_type(qp) == IB_QPT_GSI)
   wr->wr.ud.pkey_index = ud_wr(ibwr)->pkey_index;
  if (wr->opcode == 129)
   wr->ex.imm_data = ibwr->ex.imm_data;
 } else {
  switch (wr->opcode) {
  case 131:
   wr->ex.imm_data = ibwr->ex.imm_data;

  case 133:
  case 132:
   wr->wr.rdma.remote_addr = rdma_wr(ibwr)->remote_addr;
   wr->wr.rdma.rkey = rdma_wr(ibwr)->rkey;
   break;
  case 129:
   wr->ex.imm_data = ibwr->ex.imm_data;
   break;
  case 128:
   wr->ex.invalidate_rkey = ibwr->ex.invalidate_rkey;
   break;
  case 136:
  case 135:
   wr->wr.atomic.remote_addr =
    atomic_wr(ibwr)->remote_addr;
   wr->wr.atomic.compare_add =
    atomic_wr(ibwr)->compare_add;
   wr->wr.atomic.swap = atomic_wr(ibwr)->swap;
   wr->wr.atomic.rkey = atomic_wr(ibwr)->rkey;
   break;
  case 134:
   wr->ex.invalidate_rkey = ibwr->ex.invalidate_rkey;
  break;
  case 130:
   wr->wr.reg.mr = reg_wr(ibwr)->mr;
   wr->wr.reg.key = reg_wr(ibwr)->key;
   wr->wr.reg.access = reg_wr(ibwr)->access;
  break;
  default:
   break;
  }
 }
}
