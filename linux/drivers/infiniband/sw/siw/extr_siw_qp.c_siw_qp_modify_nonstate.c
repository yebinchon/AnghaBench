
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siw_qp_attrs {int flags; } ;
struct TYPE_2__ {int flags; } ;
struct siw_qp {TYPE_1__ attrs; } ;
typedef enum siw_qp_attr_mask { ____Placeholder_siw_qp_attr_mask } siw_qp_attr_mask ;


 int SIW_QP_ATTR_ACCESS_FLAGS ;
 int SIW_RDMA_BIND_ENABLED ;
 int SIW_RDMA_READ_ENABLED ;
 int SIW_RDMA_WRITE_ENABLED ;

__attribute__((used)) static void siw_qp_modify_nonstate(struct siw_qp *qp,
       struct siw_qp_attrs *attrs,
       enum siw_qp_attr_mask mask)
{
 if (mask & SIW_QP_ATTR_ACCESS_FLAGS) {
  if (attrs->flags & SIW_RDMA_BIND_ENABLED)
   qp->attrs.flags |= SIW_RDMA_BIND_ENABLED;
  else
   qp->attrs.flags &= ~SIW_RDMA_BIND_ENABLED;

  if (attrs->flags & SIW_RDMA_WRITE_ENABLED)
   qp->attrs.flags |= SIW_RDMA_WRITE_ENABLED;
  else
   qp->attrs.flags &= ~SIW_RDMA_WRITE_ENABLED;

  if (attrs->flags & SIW_RDMA_READ_ENABLED)
   qp->attrs.flags |= SIW_RDMA_READ_ENABLED;
  else
   qp->attrs.flags &= ~SIW_RDMA_READ_ENABLED;
 }
}
