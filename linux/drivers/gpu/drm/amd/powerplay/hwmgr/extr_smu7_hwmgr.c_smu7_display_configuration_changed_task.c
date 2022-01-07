
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int smu7_program_display_gap (struct pp_hwmgr*) ;

__attribute__((used)) static int smu7_display_configuration_changed_task(struct pp_hwmgr *hwmgr)
{
 return smu7_program_display_gap(hwmgr);
}
