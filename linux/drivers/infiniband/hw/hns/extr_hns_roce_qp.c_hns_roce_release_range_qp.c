
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hns_roce_qp_table {int bitmap; } ;
struct TYPE_2__ {int reserved_qps; } ;
struct hns_roce_dev {TYPE_1__ caps; struct hns_roce_qp_table qp_table; } ;


 int BITMAP_RR ;
 int hns_roce_bitmap_free_range (int *,int,int,int ) ;

void hns_roce_release_range_qp(struct hns_roce_dev *hr_dev, int base_qpn,
          int cnt)
{
 struct hns_roce_qp_table *qp_table = &hr_dev->qp_table;

 if (base_qpn < hr_dev->caps.reserved_qps)
  return;

 hns_roce_bitmap_free_range(&qp_table->bitmap, base_qpn, cnt, BITMAP_RR);
}
