
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_mtr {int buf_pg_shift; int hem_list; } ;


 int hns_roce_hem_list_init (int *,int) ;

void hns_roce_mtr_init(struct hns_roce_mtr *mtr, int bt_pg_shift,
         int buf_pg_shift)
{
 hns_roce_hem_list_init(&mtr->hem_list, bt_pg_shift);
 mtr->buf_pg_shift = buf_pg_shift;
}
