
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;


 int ASIC_CFG_SBUS_EXECUTE ;
 int ASIC_CFG_SBUS_EXECUTE_FAST_MODE_SMASK ;
 int write_csr (struct hfi1_devdata*,int ,int ) ;

void set_sbus_fast_mode(struct hfi1_devdata *dd)
{
 write_csr(dd, ASIC_CFG_SBUS_EXECUTE,
    ASIC_CFG_SBUS_EXECUTE_FAST_MODE_SMASK);
}
