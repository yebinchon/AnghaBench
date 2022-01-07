
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mw {int device; } ;
struct hns_roce_mw {int dummy; } ;
struct hns_roce_dev {int dummy; } ;


 int hns_roce_mw_free (struct hns_roce_dev*,struct hns_roce_mw*) ;
 int kfree (struct hns_roce_mw*) ;
 struct hns_roce_dev* to_hr_dev (int ) ;
 struct hns_roce_mw* to_hr_mw (struct ib_mw*) ;

int hns_roce_dealloc_mw(struct ib_mw *ibmw)
{
 struct hns_roce_dev *hr_dev = to_hr_dev(ibmw->device);
 struct hns_roce_mw *mw = to_hr_mw(ibmw);

 hns_roce_mw_free(hr_dev, mw);
 kfree(mw);

 return 0;
}
