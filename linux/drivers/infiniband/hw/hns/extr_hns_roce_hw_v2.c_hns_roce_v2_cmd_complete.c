
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hns_roce_dev {int dummy; } ;


 int HNS_ROCE_HW_MB_STATUS_MASK ;
 int hns_roce_query_mbox_status (struct hns_roce_dev*) ;

__attribute__((used)) static int hns_roce_v2_cmd_complete(struct hns_roce_dev *hr_dev)
{
 u32 status = hns_roce_query_mbox_status(hr_dev);

 return status & HNS_ROCE_HW_MB_STATUS_MASK;
}
