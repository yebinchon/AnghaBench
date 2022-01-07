
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int dummy; } ;


 int SMU_MSG_RunAfllBtc ;
 int smu_send_smc_msg (struct smu_context*,int ) ;

__attribute__((used)) static int vega20_run_btc_afll(struct smu_context *smu)
{
 return smu_send_smc_msg(smu, SMU_MSG_RunAfllBtc);
}
