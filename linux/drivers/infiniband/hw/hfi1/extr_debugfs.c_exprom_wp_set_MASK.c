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
typedef  int /*<<< orphan*/  u64 ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASIC_GPIO_OE ; 
 int /*<<< orphan*/  ASIC_GPIO_OUT ; 
 int /*<<< orphan*/  EXPROM_WRITE_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*) ; 
 int exprom_wp_disabled ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct hfi1_devdata *dd, bool disable)
{
	u64 gpio_val = 0;

	if (disable) {
		gpio_val = EXPROM_WRITE_ENABLE;
		exprom_wp_disabled = true;
		FUNC0(dd, "Disable Expansion ROM Write Protection\n");
	} else {
		exprom_wp_disabled = false;
		FUNC0(dd, "Enable Expansion ROM Write Protection\n");
	}

	FUNC1(dd, ASIC_GPIO_OUT, gpio_val);
	FUNC1(dd, ASIC_GPIO_OE, gpio_val);

	return 0;
}