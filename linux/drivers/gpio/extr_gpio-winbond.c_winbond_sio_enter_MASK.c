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

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  WB_GPIO_DRIVER_NAME ; 
 int /*<<< orphan*/  WB_SIO_EXT_ENTER_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(unsigned long base)
{
	if (!FUNC1(base, 2, WB_GPIO_DRIVER_NAME))
		return -EBUSY;

	/*
	 * datasheet says two successive writes of the "key" value are needed
	 * in order for chip to enter the "Extended Function Mode"
	 */
	FUNC0(WB_SIO_EXT_ENTER_KEY, base);
	FUNC0(WB_SIO_EXT_ENTER_KEY, base);

	return 0;
}