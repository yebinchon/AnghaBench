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
struct nct6683_data {int have_pwm; int /*<<< orphan*/ * pwm; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int NCT6683_NUM_REG_PWM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct nct6683_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct nct6683_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct nct6683_data *data = FUNC1(dev);
	int i;

	for (i = 0; i < NCT6683_NUM_REG_PWM; i++) {
		if (!(data->have_pwm & (1 << i)))
			continue;
		data->pwm[i] = FUNC2(data, FUNC0(i));
	}
}