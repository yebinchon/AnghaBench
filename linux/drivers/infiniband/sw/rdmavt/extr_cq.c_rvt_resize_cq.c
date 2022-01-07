
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct rvt_mmap_info {int pending_mmaps; int offset; } ;
struct rvt_k_cq_wc {int head; int tail; int * kqueue; int * uqueue; } ;
struct TYPE_4__ {int max_cqe; } ;
struct TYPE_5__ {int node; TYPE_1__ props; } ;
struct rvt_dev_info {int pending_lock; int pending_mmaps; TYPE_2__ dparms; } ;
struct rvt_cq_wc {int head; int tail; int * kqueue; int * uqueue; } ;
struct TYPE_6__ {int cqe; } ;
struct rvt_cq {int lock; struct rvt_mmap_info* ip; struct rvt_k_cq_wc* kqueue; struct rvt_k_cq_wc* queue; TYPE_3__ ibcq; struct rvt_dev_info* rdi; } ;
struct ib_wc {int dummy; } ;
struct ib_uverbs_wc {int dummy; } ;
struct ib_udata {int outlen; } ;
struct ib_cq {int dummy; } ;
typedef int offset ;
typedef int __u64 ;


 int EINVAL ;
 int ENOMEM ;
 int RDMA_READ_UAPI_ATOMIC (int) ;
 int RDMA_WRITE_UAPI_ATOMIC (int,int) ;
 int ib_copy_to_udata (struct ib_udata*,int *,int) ;
 struct rvt_cq* ibcq_to_rvtcq (struct ib_cq*) ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int rvt_update_mmap_info (struct rvt_dev_info*,struct rvt_mmap_info*,int,struct rvt_k_cq_wc*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int) ;
 int vfree (struct rvt_k_cq_wc*) ;
 struct rvt_k_cq_wc* vmalloc_user (int) ;
 struct rvt_k_cq_wc* vzalloc_node (int,int ) ;

int rvt_resize_cq(struct ib_cq *ibcq, int cqe, struct ib_udata *udata)
{
 struct rvt_cq *cq = ibcq_to_rvtcq(ibcq);
 u32 head, tail, n;
 int ret;
 u32 sz;
 struct rvt_dev_info *rdi = cq->rdi;
 struct rvt_cq_wc *u_wc = ((void*)0);
 struct rvt_cq_wc *old_u_wc = ((void*)0);
 struct rvt_k_cq_wc *k_wc = ((void*)0);
 struct rvt_k_cq_wc *old_k_wc = ((void*)0);

 if (cqe < 1 || cqe > rdi->dparms.props.max_cqe)
  return -EINVAL;




 if (udata && udata->outlen >= sizeof(__u64)) {
  sz = sizeof(struct ib_uverbs_wc) * (cqe + 1);
  sz += sizeof(*u_wc);
  u_wc = vmalloc_user(sz);
  if (!u_wc)
   return -ENOMEM;
 } else {
  sz = sizeof(struct ib_wc) * (cqe + 1);
  sz += sizeof(*k_wc);
  k_wc = vzalloc_node(sz, rdi->dparms.node);
  if (!k_wc)
   return -ENOMEM;
 }

 if (udata && udata->outlen >= sizeof(__u64)) {
  __u64 offset = 0;

  ret = ib_copy_to_udata(udata, &offset, sizeof(offset));
  if (ret)
   goto bail_free;
 }

 spin_lock_irq(&cq->lock);




 if (u_wc) {
  old_u_wc = cq->queue;
  head = RDMA_READ_UAPI_ATOMIC(old_u_wc->head);
  tail = RDMA_READ_UAPI_ATOMIC(old_u_wc->tail);
 } else {
  old_k_wc = cq->kqueue;
  head = old_k_wc->head;
  tail = old_k_wc->tail;
 }

 if (head > (u32)cq->ibcq.cqe)
  head = (u32)cq->ibcq.cqe;
 if (tail > (u32)cq->ibcq.cqe)
  tail = (u32)cq->ibcq.cqe;
 if (head < tail)
  n = cq->ibcq.cqe + 1 + head - tail;
 else
  n = head - tail;
 if (unlikely((u32)cqe < n)) {
  ret = -EINVAL;
  goto bail_unlock;
 }
 for (n = 0; tail != head; n++) {
  if (u_wc)
   u_wc->uqueue[n] = old_u_wc->uqueue[tail];
  else
   k_wc->kqueue[n] = old_k_wc->kqueue[tail];
  if (tail == (u32)cq->ibcq.cqe)
   tail = 0;
  else
   tail++;
 }
 cq->ibcq.cqe = cqe;
 if (u_wc) {
  RDMA_WRITE_UAPI_ATOMIC(u_wc->head, n);
  RDMA_WRITE_UAPI_ATOMIC(u_wc->tail, 0);
  cq->queue = u_wc;
 } else {
  k_wc->head = n;
  k_wc->tail = 0;
  cq->kqueue = k_wc;
 }
 spin_unlock_irq(&cq->lock);

 if (u_wc)
  vfree(old_u_wc);
 else
  vfree(old_k_wc);

 if (cq->ip) {
  struct rvt_mmap_info *ip = cq->ip;

  rvt_update_mmap_info(rdi, ip, sz, u_wc);





  if (udata && udata->outlen >= sizeof(__u64)) {
   ret = ib_copy_to_udata(udata, &ip->offset,
            sizeof(ip->offset));
   if (ret)
    return ret;
  }

  spin_lock_irq(&rdi->pending_lock);
  if (list_empty(&ip->pending_mmaps))
   list_add(&ip->pending_mmaps, &rdi->pending_mmaps);
  spin_unlock_irq(&rdi->pending_lock);
 }

 return 0;

bail_unlock:
 spin_unlock_irq(&cq->lock);
bail_free:
 vfree(u_wc);
 vfree(k_wc);

 return ret;
}
