
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hns_roce_qp {int dummy; } ;
struct TYPE_2__ {int num_qps; } ;
struct hns_roce_dev {TYPE_1__ caps; int qp_table_xa; } ;


 struct hns_roce_qp* xa_load (int *,int) ;

__attribute__((used)) static inline struct hns_roce_qp
 *__hns_roce_qp_lookup(struct hns_roce_dev *hr_dev, u32 qpn)
{
 return xa_load(&hr_dev->qp_table_xa, qpn & (hr_dev->caps.num_qps - 1));
}
