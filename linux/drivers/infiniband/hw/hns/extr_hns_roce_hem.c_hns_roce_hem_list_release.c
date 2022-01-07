
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_hem_list {scalar_t__ root_ba; int btm_bt; int root_bt; int ** mid_bt; } ;
struct hns_roce_dev {int dummy; } ;


 int HNS_ROCE_MAX_BT_LEVEL ;
 int HNS_ROCE_MAX_BT_REGION ;
 int INIT_LIST_HEAD (int *) ;
 int hem_list_free_all (struct hns_roce_dev*,int *,int) ;

void hns_roce_hem_list_release(struct hns_roce_dev *hr_dev,
          struct hns_roce_hem_list *hem_list)
{
 int i, j;

 for (i = 0; i < HNS_ROCE_MAX_BT_REGION; i++)
  for (j = 0; j < HNS_ROCE_MAX_BT_LEVEL; j++)
   hem_list_free_all(hr_dev, &hem_list->mid_bt[i][j],
       j != 0);

 hem_list_free_all(hr_dev, &hem_list->root_bt, 1);
 INIT_LIST_HEAD(&hem_list->btm_bt);
 hem_list->root_ba = 0;
}
