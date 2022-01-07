
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ib_mr {int dummy; } ;
struct qedr_mr {struct ib_mr ibmr; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int dummy; } ;
typedef enum ib_mr_type { ____Placeholder_ib_mr_type } ib_mr_type ;


 int EINVAL ;
 struct ib_mr* ERR_PTR (int ) ;
 int IB_MR_TYPE_MEM_REG ;
 scalar_t__ IS_ERR (struct qedr_mr*) ;
 struct qedr_mr* __qedr_alloc_mr (struct ib_pd*,int ) ;

struct ib_mr *qedr_alloc_mr(struct ib_pd *ibpd, enum ib_mr_type mr_type,
       u32 max_num_sg, struct ib_udata *udata)
{
 struct qedr_mr *mr;

 if (mr_type != IB_MR_TYPE_MEM_REG)
  return ERR_PTR(-EINVAL);

 mr = __qedr_alloc_mr(ibpd, max_num_sg);

 if (IS_ERR(mr))
  return ERR_PTR(-EINVAL);

 return &mr->ibmr;
}
