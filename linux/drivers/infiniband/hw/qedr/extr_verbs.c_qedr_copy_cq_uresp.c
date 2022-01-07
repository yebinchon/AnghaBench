
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uresp ;
struct qedr_dev {int dummy; } ;
struct qedr_create_cq_uresp {int icid; int db_offset; } ;
struct qedr_cq {int icid; } ;
struct ib_udata {int dummy; } ;


 int DB_ADDR_SHIFT (int ) ;
 int DP_ERR (struct qedr_dev*,char*,int ) ;
 int DQ_PWM_OFFSET_UCM_RDMA_CQ_CONS_32BIT ;
 int memset (struct qedr_create_cq_uresp*,int ,int) ;
 int qedr_ib_copy_to_udata (struct ib_udata*,struct qedr_create_cq_uresp*,int) ;

__attribute__((used)) static int qedr_copy_cq_uresp(struct qedr_dev *dev,
         struct qedr_cq *cq, struct ib_udata *udata)
{
 struct qedr_create_cq_uresp uresp;
 int rc;

 memset(&uresp, 0, sizeof(uresp));

 uresp.db_offset = DB_ADDR_SHIFT(DQ_PWM_OFFSET_UCM_RDMA_CQ_CONS_32BIT);
 uresp.icid = cq->icid;

 rc = qedr_ib_copy_to_udata(udata, &uresp, sizeof(uresp));
 if (rc)
  DP_ERR(dev, "copy error cqid=0x%x.\n", cq->icid);

 return rc;
}
