
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_bitmap {int table; } ;


 int kfree (int ) ;

void hns_roce_bitmap_cleanup(struct hns_roce_bitmap *bitmap)
{
 kfree(bitmap->table);
}
