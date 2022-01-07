
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_bitmap {int dummy; } ;


 int hns_roce_bitmap_free_range (struct hns_roce_bitmap*,unsigned long,int,int) ;

void hns_roce_bitmap_free(struct hns_roce_bitmap *bitmap, unsigned long obj,
     int rr)
{
 hns_roce_bitmap_free_range(bitmap, obj, 1, rr);
}
