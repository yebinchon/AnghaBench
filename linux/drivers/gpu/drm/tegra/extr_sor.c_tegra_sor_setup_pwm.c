
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_sor {int dummy; } ;


 int ETIMEDOUT ;
 int SOR_PWM_CTL ;
 int SOR_PWM_CTL_CLK_SEL ;
 int SOR_PWM_CTL_DUTY_CYCLE_MASK ;
 int SOR_PWM_CTL_TRIGGER ;
 int SOR_PWM_DIV ;
 int SOR_PWM_DIV_MASK ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 int tegra_sor_readl (struct tegra_sor*,int ) ;
 int tegra_sor_writel (struct tegra_sor*,int,int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tegra_sor_setup_pwm(struct tegra_sor *sor, unsigned long timeout)
{
 u32 value;

 value = tegra_sor_readl(sor, SOR_PWM_DIV);
 value &= ~SOR_PWM_DIV_MASK;
 value |= 0x400;
 tegra_sor_writel(sor, value, SOR_PWM_DIV);

 value = tegra_sor_readl(sor, SOR_PWM_CTL);
 value &= ~SOR_PWM_CTL_DUTY_CYCLE_MASK;
 value |= 0x400;
 value &= ~SOR_PWM_CTL_CLK_SEL;
 value |= SOR_PWM_CTL_TRIGGER;
 tegra_sor_writel(sor, value, SOR_PWM_CTL);

 timeout = jiffies + msecs_to_jiffies(timeout);

 while (time_before(jiffies, timeout)) {
  value = tegra_sor_readl(sor, SOR_PWM_CTL);
  if ((value & SOR_PWM_CTL_TRIGGER) == 0)
   return 0;

  usleep_range(25, 100);
 }

 return -ETIMEDOUT;
}
