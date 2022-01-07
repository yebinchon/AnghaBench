
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu8_hwmgr {int acp_boot_level; } ;
struct pp_hwmgr {struct smu8_hwmgr* backend; } ;



__attribute__((used)) static void smu8_reset_acp_boot_level(struct pp_hwmgr *hwmgr)
{
 struct smu8_hwmgr *data = hwmgr->backend;

 data->acp_boot_level = 0xff;
}
