
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct pp_hwmgr {int dummy; } ;


 int EINVAL ;
 int PPSMC_MSG_GetDriverIfVersion ;
 scalar_t__ SMU10_DRIVER_IF_VERSION ;
 int pr_err (char*) ;
 scalar_t__ smu10_read_arg_from_smc (struct pp_hwmgr*) ;
 int smu10_send_msg_to_smc (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int smu10_verify_smc_interface(struct pp_hwmgr *hwmgr)
{
 uint32_t smc_driver_if_version;

 smu10_send_msg_to_smc(hwmgr,
   PPSMC_MSG_GetDriverIfVersion);
 smc_driver_if_version = smu10_read_arg_from_smc(hwmgr);

 if ((smc_driver_if_version != SMU10_DRIVER_IF_VERSION) &&
     (smc_driver_if_version != SMU10_DRIVER_IF_VERSION + 1)) {
  pr_err("Attempt to read SMC IF Version Number Failed!\n");
  return -EINVAL;
 }

 return 0;
}
