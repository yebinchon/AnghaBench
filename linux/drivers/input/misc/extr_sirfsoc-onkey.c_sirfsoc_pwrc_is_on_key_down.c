
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sirfsoc_pwrc_drvdata {scalar_t__ pwrc_base; } ;


 int PWRC_ON_KEY_BIT ;
 scalar_t__ PWRC_PIN_STATUS ;
 int sirfsoc_rtc_iobrg_readl (scalar_t__) ;

__attribute__((used)) static int sirfsoc_pwrc_is_on_key_down(struct sirfsoc_pwrc_drvdata *pwrcdrv)
{
 u32 state = sirfsoc_rtc_iobrg_readl(pwrcdrv->pwrc_base +
       PWRC_PIN_STATUS);
 return !(state & PWRC_ON_KEY_BIT);
}
