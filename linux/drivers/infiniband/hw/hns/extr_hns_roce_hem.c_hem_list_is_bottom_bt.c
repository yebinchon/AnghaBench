
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool hem_list_is_bottom_bt(int hopnum, int bt_level)
{







 return bt_level >= (hopnum ? hopnum - 1 : hopnum);
}
