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
typedef  int u16 ;
struct kempld_device_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEMPLD_GPIO_EVT_LVL_EDGE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kempld_device_data*) ; 
 int FUNC2 (struct kempld_device_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kempld_device_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct kempld_device_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct kempld_device_data *pld)
{
	u16 evt, evt_back;

	FUNC1(pld);

	/* Backup event register as it might be already initialized */
	evt_back = FUNC2(pld, KEMPLD_GPIO_EVT_LVL_EDGE);
	/* Clear event register */
	FUNC4(pld, KEMPLD_GPIO_EVT_LVL_EDGE, 0x0000);
	/* Read back event register */
	evt = FUNC2(pld, KEMPLD_GPIO_EVT_LVL_EDGE);
	/* Restore event register */
	FUNC4(pld, KEMPLD_GPIO_EVT_LVL_EDGE, evt_back);

	FUNC3(pld);

	return evt ? FUNC0(evt) : 16;
}