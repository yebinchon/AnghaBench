
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int __ffs (int ) ;

__attribute__((used)) static unsigned int map_subwindow_cnt_to_wce(u32 subwindow_cnt)
{

 return __ffs(subwindow_cnt) - 1;
}
