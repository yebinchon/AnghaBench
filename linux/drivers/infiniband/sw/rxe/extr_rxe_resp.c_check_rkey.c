
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int rkey; int resid; struct rxe_mem* mr; int va; scalar_t__ length; } ;
struct rxe_qp {int mtu; TYPE_1__ resp; int pd; } ;
struct rxe_pkt_info {int mask; } ;
struct rxe_mem {scalar_t__ state; } ;
typedef enum resp_states { ____Placeholder_resp_states } resp_states ;


 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int RESPST_ERR_LENGTH ;
 int RESPST_ERR_RKEY_VIOLATION ;
 int RESPST_EXECUTE ;
 int RXE_ATOMIC_MASK ;
 scalar_t__ RXE_MEM_STATE_FREE ;
 int RXE_READ_MASK ;
 int RXE_RETH_MASK ;
 int RXE_WRITE_MASK ;
 int RXE_WRITE_OR_SEND ;
 int WARN_ON_ONCE (struct rxe_mem*) ;
 int atmeth_rkey (struct rxe_pkt_info*) ;
 int atmeth_va (struct rxe_pkt_info*) ;
 int bth_pad (struct rxe_pkt_info*) ;
 struct rxe_mem* lookup_mem (int ,int,int,int ) ;
 int lookup_remote ;
 scalar_t__ mem_check_range (struct rxe_mem*,int ,int) ;
 int payload_size (struct rxe_pkt_info*) ;
 scalar_t__ reth_len (struct rxe_pkt_info*) ;
 int reth_rkey (struct rxe_pkt_info*) ;
 int reth_va (struct rxe_pkt_info*) ;
 int rxe_drop_ref (struct rxe_mem*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static enum resp_states check_rkey(struct rxe_qp *qp,
       struct rxe_pkt_info *pkt)
{
 struct rxe_mem *mem = ((void*)0);
 u64 va;
 u32 rkey;
 u32 resid;
 u32 pktlen;
 int mtu = qp->mtu;
 enum resp_states state;
 int access;

 if (pkt->mask & (RXE_READ_MASK | RXE_WRITE_MASK)) {
  if (pkt->mask & RXE_RETH_MASK) {
   qp->resp.va = reth_va(pkt);
   qp->resp.rkey = reth_rkey(pkt);
   qp->resp.resid = reth_len(pkt);
   qp->resp.length = reth_len(pkt);
  }
  access = (pkt->mask & RXE_READ_MASK) ? IB_ACCESS_REMOTE_READ
           : IB_ACCESS_REMOTE_WRITE;
 } else if (pkt->mask & RXE_ATOMIC_MASK) {
  qp->resp.va = atmeth_va(pkt);
  qp->resp.rkey = atmeth_rkey(pkt);
  qp->resp.resid = sizeof(u64);
  access = IB_ACCESS_REMOTE_ATOMIC;
 } else {
  return RESPST_EXECUTE;
 }


 if ((pkt->mask & (RXE_READ_MASK | RXE_WRITE_OR_SEND)) &&
     (pkt->mask & RXE_RETH_MASK) &&
     reth_len(pkt) == 0) {
  return RESPST_EXECUTE;
 }

 va = qp->resp.va;
 rkey = qp->resp.rkey;
 resid = qp->resp.resid;
 pktlen = payload_size(pkt);

 mem = lookup_mem(qp->pd, access, rkey, lookup_remote);
 if (!mem) {
  state = RESPST_ERR_RKEY_VIOLATION;
  goto err;
 }

 if (unlikely(mem->state == RXE_MEM_STATE_FREE)) {
  state = RESPST_ERR_RKEY_VIOLATION;
  goto err;
 }

 if (mem_check_range(mem, va, resid)) {
  state = RESPST_ERR_RKEY_VIOLATION;
  goto err;
 }

 if (pkt->mask & RXE_WRITE_MASK) {
  if (resid > mtu) {
   if (pktlen != mtu || bth_pad(pkt)) {
    state = RESPST_ERR_LENGTH;
    goto err;
   }
  } else {
   if (pktlen != resid) {
    state = RESPST_ERR_LENGTH;
    goto err;
   }
   if ((bth_pad(pkt) != (0x3 & (-resid)))) {



    state = RESPST_ERR_LENGTH;
    goto err;
   }
  }
 }

 WARN_ON_ONCE(qp->resp.mr);

 qp->resp.mr = mem;
 return RESPST_EXECUTE;

err:
 if (mem)
  rxe_drop_ref(mem);
 return state;
}
