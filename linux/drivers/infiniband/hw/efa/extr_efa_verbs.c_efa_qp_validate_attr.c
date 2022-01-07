
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_qp_init_attr {scalar_t__ qp_type; scalar_t__ create_flags; scalar_t__ srq; } ;
struct efa_dev {int ibdev; } ;


 int EOPNOTSUPP ;
 scalar_t__ IB_QPT_DRIVER ;
 scalar_t__ IB_QPT_UD ;
 int ibdev_dbg (int *,char*,...) ;

__attribute__((used)) static int efa_qp_validate_attr(struct efa_dev *dev,
    struct ib_qp_init_attr *init_attr)
{
 if (init_attr->qp_type != IB_QPT_DRIVER &&
     init_attr->qp_type != IB_QPT_UD) {
  ibdev_dbg(&dev->ibdev,
     "Unsupported qp type %d\n", init_attr->qp_type);
  return -EOPNOTSUPP;
 }

 if (init_attr->srq) {
  ibdev_dbg(&dev->ibdev, "SRQ is not supported\n");
  return -EOPNOTSUPP;
 }

 if (init_attr->create_flags) {
  ibdev_dbg(&dev->ibdev, "Unsupported create flags\n");
  return -EOPNOTSUPP;
 }

 return 0;
}
