
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ PAMU_PC3 ;
 int PAMU_PC3_MWCE (int ) ;
 int in_be32 (int *) ;
 int max_subwindow_count ;

__attribute__((used)) static void get_pamu_cap_values(unsigned long pamu_reg_base)
{
 u32 pc_val;

 pc_val = in_be32((u32 *)(pamu_reg_base + PAMU_PC3));

 max_subwindow_count = 1 << (1 + PAMU_PC3_MWCE(pc_val));
}
