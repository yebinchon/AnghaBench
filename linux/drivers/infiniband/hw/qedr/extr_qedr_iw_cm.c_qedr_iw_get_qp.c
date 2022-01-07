
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedr_dev {int qps; } ;
struct ib_qp {int dummy; } ;
struct ib_device {int dummy; } ;


 struct qedr_dev* get_qedr_dev (struct ib_device*) ;
 struct ib_qp* xa_load (int *,int) ;

struct ib_qp *qedr_iw_get_qp(struct ib_device *ibdev, int qpn)
{
 struct qedr_dev *dev = get_qedr_dev(ibdev);

 return xa_load(&dev->qps, qpn);
}
