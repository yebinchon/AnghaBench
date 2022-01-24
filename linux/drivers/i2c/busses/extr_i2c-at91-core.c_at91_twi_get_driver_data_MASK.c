#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct at91_twi_pdata {int dummy; } ;
struct TYPE_4__ {scalar_t__ driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  atmel_twi_dt_ids ; 
 struct of_device_id* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__* FUNC1 (struct platform_device*) ; 

__attribute__((used)) static struct at91_twi_pdata *FUNC2(
					struct platform_device *pdev)
{
	if (pdev->dev.of_node) {
		const struct of_device_id *match;
		match = FUNC0(atmel_twi_dt_ids, pdev->dev.of_node);
		if (!match)
			return NULL;
		return (struct at91_twi_pdata *)match->data;
	}
	return (struct at91_twi_pdata *) FUNC1(pdev)->driver_data;
}