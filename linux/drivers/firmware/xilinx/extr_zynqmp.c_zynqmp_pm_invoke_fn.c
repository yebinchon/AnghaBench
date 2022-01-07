
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int PM_SIP_SVC ;
 int do_fw_call (int,int,int,int*) ;

int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
   u32 arg2, u32 arg3, u32 *ret_payload)
{




 u64 smc_arg[4];

 smc_arg[0] = PM_SIP_SVC | pm_api_id;
 smc_arg[1] = ((u64)arg1 << 32) | arg0;
 smc_arg[2] = ((u64)arg3 << 32) | arg2;

 return do_fw_call(smc_arg[0], smc_arg[1], smc_arg[2], ret_payload);
}
