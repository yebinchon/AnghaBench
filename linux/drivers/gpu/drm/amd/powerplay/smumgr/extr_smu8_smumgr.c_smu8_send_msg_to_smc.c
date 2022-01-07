
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pp_hwmgr {int dummy; } ;


 int smu8_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;

__attribute__((used)) static int smu8_send_msg_to_smc(struct pp_hwmgr *hwmgr, uint16_t msg)
{
 return smu8_send_msg_to_smc_with_parameter(hwmgr, msg, 0);
}
