
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryp_device_data {int dummy; } ;


 int cpu_relax () ;
 scalar_t__ cryp_is_logic_busy (struct cryp_device_data*) ;

void cryp_wait_until_done(struct cryp_device_data *device_data)
{
 while (cryp_is_logic_busy(device_data))
  cpu_relax();
}
