
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedr_dev {int dummy; } ;
struct qedr_cq {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_cq {int device; } ;


 int DP_ERR (struct qedr_dev*,char*,struct qedr_cq*) ;
 struct qedr_cq* get_qedr_cq (struct ib_cq*) ;
 struct qedr_dev* get_qedr_dev (int ) ;

int qedr_resize_cq(struct ib_cq *ibcq, int new_cnt, struct ib_udata *udata)
{
 struct qedr_dev *dev = get_qedr_dev(ibcq->device);
 struct qedr_cq *cq = get_qedr_cq(ibcq);

 DP_ERR(dev, "cq %p RESIZE NOT SUPPORTED\n", cq);

 return 0;
}
