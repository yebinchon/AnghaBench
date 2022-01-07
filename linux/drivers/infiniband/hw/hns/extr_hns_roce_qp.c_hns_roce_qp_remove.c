
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xarray {int dummy; } ;
struct hns_roce_qp {int qpn; } ;
struct TYPE_2__ {int num_qps; } ;
struct hns_roce_dev {TYPE_1__ caps; struct xarray qp_table_xa; } ;


 int __xa_erase (struct xarray*,int) ;
 int xa_lock_irqsave (struct xarray*,unsigned long) ;
 int xa_unlock_irqrestore (struct xarray*,unsigned long) ;

void hns_roce_qp_remove(struct hns_roce_dev *hr_dev, struct hns_roce_qp *hr_qp)
{
 struct xarray *xa = &hr_dev->qp_table_xa;
 unsigned long flags;

 xa_lock_irqsave(xa, flags);
 __xa_erase(xa, hr_qp->qpn & (hr_dev->caps.num_qps - 1));
 xa_unlock_irqrestore(xa, flags);
}
