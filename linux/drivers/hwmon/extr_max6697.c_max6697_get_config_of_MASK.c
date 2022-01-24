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
typedef  int /*<<< orphan*/  u32 ;
struct max6697_platform_data {int resistance_cancellation; void* ideality_value; void* ideality_mask; void* over_temperature_mask; void* alert_mask; void* beta_compensation; void* extended_range_enable; void* smbus_timeout_disable; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * FUNC1 (struct device_node*,char*,int*) ; 
 void* FUNC2 (struct device_node*,char*) ; 

__attribute__((used)) static void FUNC3(struct device_node *node,
				  struct max6697_platform_data *pdata)
{
	int len;
	const __be32 *prop;

	pdata->smbus_timeout_disable =
		FUNC2(node, "smbus-timeout-disable");
	pdata->extended_range_enable =
		FUNC2(node, "extended-range-enable");
	pdata->beta_compensation =
		FUNC2(node, "beta-compensation-enable");

	prop = FUNC1(node, "alert-mask", &len);
	if (prop && len == sizeof(u32))
		pdata->alert_mask = FUNC0(prop[0]);
	prop = FUNC1(node, "over-temperature-mask", &len);
	if (prop && len == sizeof(u32))
		pdata->over_temperature_mask = FUNC0(prop[0]);
	prop = FUNC1(node, "resistance-cancellation", &len);
	if (prop) {
		if (len == sizeof(u32))
			pdata->resistance_cancellation = FUNC0(prop[0]);
		else
			pdata->resistance_cancellation = 0xfe;
	}
	prop = FUNC1(node, "transistor-ideality", &len);
	if (prop && len == 2 * sizeof(u32)) {
			pdata->ideality_mask = FUNC0(prop[0]);
			pdata->ideality_value = FUNC0(prop[1]);
	}
}