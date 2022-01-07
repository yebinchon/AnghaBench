
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uresp ;
struct qedr_srq {int srq_id; } ;
struct qedr_dev {int dummy; } ;
struct qedr_create_srq_uresp {int srq_id; } ;
struct ib_udata {int dummy; } ;


 int DP_ERR (struct qedr_dev*,char*) ;
 int ib_copy_to_udata (struct ib_udata*,struct qedr_create_srq_uresp*,int) ;

__attribute__((used)) static int qedr_copy_srq_uresp(struct qedr_dev *dev,
          struct qedr_srq *srq, struct ib_udata *udata)
{
 struct qedr_create_srq_uresp uresp = {};
 int rc;

 uresp.srq_id = srq->srq_id;

 rc = ib_copy_to_udata(udata, &uresp, sizeof(uresp));
 if (rc)
  DP_ERR(dev, "create srq: problem copying data to user space\n");

 return rc;
}
