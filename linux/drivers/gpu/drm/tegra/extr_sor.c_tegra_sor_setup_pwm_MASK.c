#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct tegra_sor {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  SOR_PWM_CTL ; 
 int SOR_PWM_CTL_CLK_SEL ; 
 int SOR_PWM_CTL_DUTY_CYCLE_MASK ; 
 int SOR_PWM_CTL_TRIGGER ; 
 int /*<<< orphan*/  SOR_PWM_DIV ; 
 int SOR_PWM_DIV_MASK ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (unsigned long) ; 
 int FUNC1 (struct tegra_sor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_sor*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct tegra_sor *sor, unsigned long timeout)
{
	u32 value;

	value = FUNC1(sor, SOR_PWM_DIV);
	value &= ~SOR_PWM_DIV_MASK;
	value |= 0x400; /* period */
	FUNC2(sor, value, SOR_PWM_DIV);

	value = FUNC1(sor, SOR_PWM_CTL);
	value &= ~SOR_PWM_CTL_DUTY_CYCLE_MASK;
	value |= 0x400; /* duty cycle */
	value &= ~SOR_PWM_CTL_CLK_SEL; /* clock source: PCLK */
	value |= SOR_PWM_CTL_TRIGGER;
	FUNC2(sor, value, SOR_PWM_CTL);

	timeout = jiffies + FUNC0(timeout);

	while (FUNC3(jiffies, timeout)) {
		value = FUNC1(sor, SOR_PWM_CTL);
		if ((value & SOR_PWM_CTL_TRIGGER) == 0)
			return 0;

		FUNC4(25, 100);
	}

	return -ETIMEDOUT;
}