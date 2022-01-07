
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hv_synic_enable_regs (int ) ;

__attribute__((used)) static void hv_synic_resume(void)
{
 hv_synic_enable_regs(0);






}
