
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xarray {int dummy; } ;
struct hns_roce_qp {unsigned long qpn; int free; int refcount; } ;
struct TYPE_2__ {int num_qps; } ;
struct hns_roce_dev {int dev; TYPE_1__ caps; struct xarray qp_table_xa; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 int atomic_set (int *,int) ;
 int dev_err (int ,char*) ;
 int init_completion (int *) ;
 int xa_err (int ) ;
 int xa_store_irq (struct xarray*,int,struct hns_roce_qp*,int ) ;

__attribute__((used)) static int hns_roce_gsi_qp_alloc(struct hns_roce_dev *hr_dev, unsigned long qpn,
     struct hns_roce_qp *hr_qp)
{
 struct xarray *xa = &hr_dev->qp_table_xa;
 int ret;

 if (!qpn)
  return -EINVAL;

 hr_qp->qpn = qpn;
 atomic_set(&hr_qp->refcount, 1);
 init_completion(&hr_qp->free);

 ret = xa_err(xa_store_irq(xa, hr_qp->qpn & (hr_dev->caps.num_qps - 1),
    hr_qp, GFP_KERNEL));
 if (ret)
  dev_err(hr_dev->dev, "QPC xa_store failed\n");

 return ret;
}
