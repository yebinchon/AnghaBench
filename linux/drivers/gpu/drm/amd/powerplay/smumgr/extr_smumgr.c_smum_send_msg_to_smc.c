
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct pp_hwmgr {TYPE_1__* smumgr_funcs; } ;
struct TYPE_2__ {int (* send_msg_to_smc ) (struct pp_hwmgr*,int ) ;} ;


 int EINVAL ;
 int stub1 (struct pp_hwmgr*,int ) ;

int smum_send_msg_to_smc(struct pp_hwmgr *hwmgr, uint16_t msg)
{
 if (hwmgr == ((void*)0) || hwmgr->smumgr_funcs->send_msg_to_smc == ((void*)0))
  return -EINVAL;

 return hwmgr->smumgr_funcs->send_msg_to_smc(hwmgr, msg);
}
