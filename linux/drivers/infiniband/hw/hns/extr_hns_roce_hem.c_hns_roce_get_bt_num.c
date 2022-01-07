
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ check_whether_bt_num_1 (int ,int ) ;
 scalar_t__ check_whether_bt_num_2 (int ,int ) ;
 scalar_t__ check_whether_bt_num_3 (int ,int ) ;

__attribute__((used)) static int hns_roce_get_bt_num(u32 table_type, u32 hop_num)
{
 if (check_whether_bt_num_3(table_type, hop_num))
  return 3;
 else if (check_whether_bt_num_2(table_type, hop_num))
  return 2;
 else if (check_whether_bt_num_1(table_type, hop_num))
  return 1;
 else
  return 0;
}
