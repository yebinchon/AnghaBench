
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_srq {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_srq_attr {int dummy; } ;
struct ib_srq {int dummy; } ;
typedef enum ib_srq_attr_mask { ____Placeholder_ib_srq_attr_mask } ib_srq_attr_mask ;


 int EINVAL ;
 int IB_SRQ_MAX_WR ;
 struct ocrdma_srq* get_ocrdma_srq (struct ib_srq*) ;
 int ocrdma_mbx_modify_srq (struct ocrdma_srq*,struct ib_srq_attr*) ;

int ocrdma_modify_srq(struct ib_srq *ibsrq,
        struct ib_srq_attr *srq_attr,
        enum ib_srq_attr_mask srq_attr_mask,
        struct ib_udata *udata)
{
 int status;
 struct ocrdma_srq *srq;

 srq = get_ocrdma_srq(ibsrq);
 if (srq_attr_mask & IB_SRQ_MAX_WR)
  status = -EINVAL;
 else
  status = ocrdma_mbx_modify_srq(srq, srq_attr);
 return status;
}
