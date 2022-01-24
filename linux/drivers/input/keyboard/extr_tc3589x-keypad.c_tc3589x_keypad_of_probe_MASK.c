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
typedef  void* u8 ;
typedef  int u32 ;
typedef  struct tc3589x_keypad_platform_data {scalar_t__ kcol; scalar_t__ krow; int enable_wakeup; int debounce_period; int /*<<< orphan*/  irqtype; int /*<<< orphan*/  settle_time; scalar_t__ no_autorepeat; } const tc3589x_keypad_platform_data ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct tc3589x_keypad_platform_data const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_TRIGGER_FALLING ; 
 scalar_t__ TC_KPD_COLUMNS ; 
 int TC_KPD_DEBOUNCE_PERIOD ; 
 scalar_t__ TC_KPD_ROWS ; 
 int /*<<< orphan*/  TC_KPD_SETTLE_TIME ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 struct tc3589x_keypad_platform_data const* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*,int*) ; 
 scalar_t__ FUNC4 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,char*,int*) ; 

__attribute__((used)) static const struct tc3589x_keypad_platform_data *
FUNC6(struct device *dev)
{
	struct device_node *np = dev->of_node;
	struct tc3589x_keypad_platform_data *plat;
	u32 cols, rows;
	u32 debounce_ms;
	int proplen;

	if (!np)
		return FUNC0(-ENODEV);

	plat = FUNC2(dev, sizeof(*plat), GFP_KERNEL);
	if (!plat)
		return FUNC0(-ENOMEM);

	FUNC5(np, "keypad,num-columns", &cols);
	FUNC5(np, "keypad,num-rows", &rows);
	plat->kcol = (u8) cols;
	plat->krow = (u8) rows;
	if (!plat->krow || !plat->kcol ||
	     plat->krow > TC_KPD_ROWS || plat->kcol > TC_KPD_COLUMNS) {
		FUNC1(dev,
			"keypad columns/rows not properly specified (%ux%u)\n",
			plat->kcol, plat->krow);
		return FUNC0(-EINVAL);
	}

	if (!FUNC3(np, "linux,keymap", &proplen)) {
		FUNC1(dev, "property linux,keymap not found\n");
		return FUNC0(-ENOENT);
	}

	plat->no_autorepeat = FUNC4(np, "linux,no-autorepeat");

	plat->enable_wakeup = FUNC4(np, "wakeup-source") ||
			      /* legacy name */
			      FUNC4(np, "linux,wakeup");

	/* The custom delay format is ms/16 */
	FUNC5(np, "debounce-delay-ms", &debounce_ms);
	if (debounce_ms)
		plat->debounce_period = debounce_ms * 16;
	else
		plat->debounce_period = TC_KPD_DEBOUNCE_PERIOD;

	plat->settle_time = TC_KPD_SETTLE_TIME;
	/* FIXME: should be property of the IRQ resource? */
	plat->irqtype = IRQF_TRIGGER_FALLING;

	return plat;
}