
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct winbond_gpio_port_conflict {scalar_t__ dev; int * name; scalar_t__ warnonly; int testbit; int testreg; } ;
struct winbond_gpio_info {scalar_t__ dev; int outputppbit; int outputreg; int enablebit; int enablereg; struct winbond_gpio_port_conflict conflict; } ;
struct TYPE_2__ {int ppgpios; int odgpios; } ;


 int BIT (unsigned int) ;
 scalar_t__ WB_SIO_DEV_NONE ;
 TYPE_1__ params ;
 int pr_notice (char*,unsigned int,char*) ;
 int pr_warn (char*,unsigned int,int *) ;
 int winbond_gpio_configure_port0_pins (unsigned long) ;
 int winbond_gpio_configure_port1_check_i2c (unsigned long) ;
 struct winbond_gpio_info* winbond_gpio_infos ;
 int winbond_sio_reg_bclear (unsigned long,int ,int ) ;
 int winbond_sio_reg_bset (unsigned long,int ,int ) ;
 scalar_t__ winbond_sio_reg_btest (unsigned long,int ,int ) ;
 int winbond_sio_select_logical (unsigned long,scalar_t__) ;

__attribute__((used)) static bool winbond_gpio_configure_port(unsigned long base, unsigned int idx)
{
 const struct winbond_gpio_info *info = &winbond_gpio_infos[idx];
 const struct winbond_gpio_port_conflict *conflict = &info->conflict;


 if (conflict->name != ((void*)0)) {
  if (conflict->dev != WB_SIO_DEV_NONE)
   winbond_sio_select_logical(base, conflict->dev);

  if (winbond_sio_reg_btest(base, conflict->testreg,
       conflict->testbit)) {
   if (conflict->warnonly)
    pr_warn("enabled GPIO%u share pins with active %s\n",
     idx + 1, conflict->name);
   else {
    pr_warn("disabling GPIO%u as %s is enabled\n",
     idx + 1, conflict->name);
    return 0;
   }
  }
 }


 if (idx == 0)
  winbond_gpio_configure_port0_pins(base);
 else if (idx == 1)
  winbond_gpio_configure_port1_check_i2c(base);

 winbond_sio_select_logical(base, info->dev);

 winbond_sio_reg_bset(base, info->enablereg, info->enablebit);

 if (params.ppgpios & BIT(idx))
  winbond_sio_reg_bset(base, info->outputreg,
         info->outputppbit);
 else if (params.odgpios & BIT(idx))
  winbond_sio_reg_bclear(base, info->outputreg,
           info->outputppbit);
 else
  pr_notice("GPIO%u pins are %s\n", idx + 1,
     winbond_sio_reg_btest(base, info->outputreg,
      info->outputppbit) ?
     "push-pull" :
     "open drain");

 return 1;
}
