
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int orq_size; int irq_size; int rq_max_sges; int rq_size; int sq_max_sges; int sq_size; } ;
struct siw_qp {TYPE_2__ attrs; } ;
struct siw_device {TYPE_1__* netdev; } ;
struct TYPE_6__ {int max_recv_sge; int max_recv_wr; int max_send_sge; int max_send_wr; int max_inline_data; } ;
struct ib_qp_init_attr {TYPE_3__ cap; int srq; int recv_cq; int send_cq; int qp_type; } ;
struct ib_qp_attr {int qp_access_flags; TYPE_3__ cap; int max_dest_rd_atomic; int max_rd_atomic; int path_mtu; } ;
struct ib_qp {int srq; int recv_cq; int send_cq; int qp_type; int device; } ;
struct TYPE_4__ {int mtu; } ;


 int EINVAL ;
 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int SIW_MAX_INLINE ;
 int ib_mtu_int_to_enum (int ) ;
 struct siw_device* to_siw_dev (int ) ;
 struct siw_qp* to_siw_qp (struct ib_qp*) ;

int siw_query_qp(struct ib_qp *base_qp, struct ib_qp_attr *qp_attr,
   int qp_attr_mask, struct ib_qp_init_attr *qp_init_attr)
{
 struct siw_qp *qp;
 struct siw_device *sdev;

 if (base_qp && qp_attr && qp_init_attr) {
  qp = to_siw_qp(base_qp);
  sdev = to_siw_dev(base_qp->device);
 } else {
  return -EINVAL;
 }
 qp_attr->cap.max_inline_data = SIW_MAX_INLINE;
 qp_attr->cap.max_send_wr = qp->attrs.sq_size;
 qp_attr->cap.max_send_sge = qp->attrs.sq_max_sges;
 qp_attr->cap.max_recv_wr = qp->attrs.rq_size;
 qp_attr->cap.max_recv_sge = qp->attrs.rq_max_sges;
 qp_attr->path_mtu = ib_mtu_int_to_enum(sdev->netdev->mtu);
 qp_attr->max_rd_atomic = qp->attrs.irq_size;
 qp_attr->max_dest_rd_atomic = qp->attrs.orq_size;

 qp_attr->qp_access_flags = IB_ACCESS_LOCAL_WRITE |
       IB_ACCESS_REMOTE_WRITE |
       IB_ACCESS_REMOTE_READ;

 qp_init_attr->qp_type = base_qp->qp_type;
 qp_init_attr->send_cq = base_qp->send_cq;
 qp_init_attr->recv_cq = base_qp->recv_cq;
 qp_init_attr->srq = base_qp->srq;

 qp_init_attr->cap = qp_attr->cap;

 return 0;
}
