
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_mtr {int hem_list; } ;
struct hns_roce_dev {int dummy; } ;


 int hns_roce_hem_list_release (struct hns_roce_dev*,int *) ;

void hns_roce_mtr_cleanup(struct hns_roce_dev *hr_dev,
     struct hns_roce_mtr *mtr)
{
 hns_roce_hem_list_release(hr_dev, &mtr->hem_list);
}
