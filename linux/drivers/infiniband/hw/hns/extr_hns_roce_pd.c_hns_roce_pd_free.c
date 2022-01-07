
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_dev {int pd_bitmap; } ;


 int BITMAP_NO_RR ;
 int hns_roce_bitmap_free (int *,unsigned long,int ) ;

__attribute__((used)) static void hns_roce_pd_free(struct hns_roce_dev *hr_dev, unsigned long pdn)
{
 hns_roce_bitmap_free(&hr_dev->pd_bitmap, pdn, BITMAP_NO_RR);
}
