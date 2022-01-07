
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int execute_pwr_dfy_table (struct pp_hwmgr*,int *) ;
 int execute_pwr_table (struct pp_hwmgr*,int ,int ) ;
 int pwr_virus_section1 ;
 int pwr_virus_section2 ;
 int pwr_virus_section3 ;
 int pwr_virus_section4 ;
 int pwr_virus_section5 ;
 int pwr_virus_section6 ;
 int pwr_virus_table_post ;
 int pwr_virus_table_pre ;

int smu7_setup_pwr_virus(struct pp_hwmgr *hwmgr)
{
 execute_pwr_table(hwmgr, pwr_virus_table_pre, ARRAY_SIZE(pwr_virus_table_pre));
 execute_pwr_dfy_table(hwmgr, &pwr_virus_section1);
 execute_pwr_dfy_table(hwmgr, &pwr_virus_section2);
 execute_pwr_dfy_table(hwmgr, &pwr_virus_section3);
 execute_pwr_dfy_table(hwmgr, &pwr_virus_section4);
 execute_pwr_dfy_table(hwmgr, &pwr_virus_section5);
 execute_pwr_dfy_table(hwmgr, &pwr_virus_section6);
 execute_pwr_table(hwmgr, pwr_virus_table_post, ARRAY_SIZE(pwr_virus_table_post));

 return 0;
}
