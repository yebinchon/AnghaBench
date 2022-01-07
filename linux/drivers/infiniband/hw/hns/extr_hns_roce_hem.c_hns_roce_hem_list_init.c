
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_hem_list {int bt_pg_shift; int ** mid_bt; int btm_bt; int root_bt; } ;


 int HNS_ROCE_MAX_BT_LEVEL ;
 int HNS_ROCE_MAX_BT_REGION ;
 int INIT_LIST_HEAD (int *) ;

void hns_roce_hem_list_init(struct hns_roce_hem_list *hem_list,
       int bt_page_order)
{
 int i, j;

 INIT_LIST_HEAD(&hem_list->root_bt);
 INIT_LIST_HEAD(&hem_list->btm_bt);
 for (i = 0; i < HNS_ROCE_MAX_BT_REGION; i++)
  for (j = 0; j < HNS_ROCE_MAX_BT_LEVEL; j++)
   INIT_LIST_HEAD(&hem_list->mid_bt[i][j]);

 hem_list->bt_pg_shift = bt_page_order;
}
