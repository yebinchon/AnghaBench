
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ib_uobject {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_qp_init_attr {int qp_type; } ;
struct TYPE_5__ {int valid; int type; } ;
struct ib_qp {TYPE_2__ res; struct ib_qp* real_qp; struct ib_uobject* uobject; struct ib_pd* pd; struct ib_device* device; } ;
struct ib_pd {int dummy; } ;
struct TYPE_4__ {struct ib_qp* (* create_qp ) (struct ib_pd*,struct ib_qp_init_attr*,struct ib_udata*) ;} ;
struct ib_device {TYPE_1__ ops; } ;
typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;


 int EOPNOTSUPP ;
 struct ib_qp* ERR_PTR (int ) ;
 int IB_QPT_DRIVER ;
 int IB_QPT_MAX ;
 int IB_QPT_XRC_INI ;
 int IB_QPT_XRC_TGT ;
 scalar_t__ IS_ERR (struct ib_qp*) ;
 int RDMA_RESTRACK_QP ;
 int rdma_restrack_kadd (TYPE_2__*) ;
 int rdma_restrack_uadd (TYPE_2__*) ;
 struct ib_qp* stub1 (struct ib_pd*,struct ib_qp_init_attr*,struct ib_udata*) ;

__attribute__((used)) static inline struct ib_qp *_ib_create_qp(struct ib_device *dev,
       struct ib_pd *pd,
       struct ib_qp_init_attr *attr,
       struct ib_udata *udata,
       struct ib_uobject *uobj)
{
 enum ib_qp_type qp_type = attr->qp_type;
 struct ib_qp *qp;
 bool is_xrc;

 if (!dev->ops.create_qp)
  return ERR_PTR(-EOPNOTSUPP);

 qp = dev->ops.create_qp(pd, attr, udata);
 if (IS_ERR(qp))
  return qp;

 qp->device = dev;
 qp->pd = pd;
 qp->uobject = uobj;
 qp->real_qp = qp;





 is_xrc = qp_type == IB_QPT_XRC_INI || qp_type == IB_QPT_XRC_TGT;
 if ((qp_type < IB_QPT_MAX && !is_xrc) || qp_type == IB_QPT_DRIVER) {
  qp->res.type = RDMA_RESTRACK_QP;
  if (uobj)
   rdma_restrack_uadd(&qp->res);
  else
   rdma_restrack_kadd(&qp->res);
 } else
  qp->res.valid = 0;

 return qp;
}
