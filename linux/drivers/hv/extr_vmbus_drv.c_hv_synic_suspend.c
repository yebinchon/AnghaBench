
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hv_synic_disable_regs (int ) ;

__attribute__((used)) static int hv_synic_suspend(void)
{
 hv_synic_disable_regs(0);

 return 0;
}
