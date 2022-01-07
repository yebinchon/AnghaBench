
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flexcop_device {int dummy; } ;


 int SMC_Enable_sig ;
 int ctrl_208 ;
 int flexcop_set_ibi_value (int ,int ,int) ;

void flexcop_smc_ctrl(struct flexcop_device *fc, int onoff)
{
 flexcop_set_ibi_value(ctrl_208, SMC_Enable_sig, onoff);
}
