
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int bootup_uma_clock; } ;
struct smu8_hwmgr {TYPE_1__ sys_info; } ;
struct pp_hwmgr {struct smu8_hwmgr* backend; } ;



__attribute__((used)) static uint32_t smu8_dpm_get_mclk(struct pp_hwmgr *hwmgr, bool low)
{
 struct smu8_hwmgr *data = hwmgr->backend;

 return data->sys_info.bootup_uma_clock;
}
