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
typedef  int u8 ;
typedef  int u32 ;
struct palmas_pwron_config {int long_press_time_val; int pwron_debounce_val; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct palmas_pwron_config*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct device_node*,char*,int*) ; 

__attribute__((used)) static void FUNC4(struct device *dev,
				       struct palmas_pwron_config *config)
{
	struct device_node *np;
	u32 val;
	int i, error;
	u8 lpk_times[] = { 6, 8, 10, 12 };
	int pwr_on_deb_ms[] = { 15, 100, 500, 1000 };

	FUNC2(config, 0, sizeof(*config));

	/* Default config parameters */
	config->long_press_time_val = FUNC0(lpk_times) - 1;

	np = dev->of_node;
	if (!np)
		return;

	error = FUNC3(np, "ti,palmas-long-press-seconds", &val);
	if (!error) {
		for (i = 0; i < FUNC0(lpk_times); i++) {
			if (val <= lpk_times[i]) {
				config->long_press_time_val = i;
				break;
			}
		}
	}

	error = FUNC3(np,
				     "ti,palmas-pwron-debounce-milli-seconds",
				     &val);
	if (!error) {
		for (i = 0; i < FUNC0(pwr_on_deb_ms); i++) {
			if (val <= pwr_on_deb_ms[i]) {
				config->pwron_debounce_val = i;
				break;
			}
		}
	}

	FUNC1(dev, "h/w controlled shutdown duration=%d seconds\n",
		 lpk_times[config->long_press_time_val]);
}