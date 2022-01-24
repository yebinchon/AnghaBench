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
struct rmi_function {int /*<<< orphan*/  dev; } ;
struct f03_data {unsigned int overwrite_buttons; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int BTN_LEFT ; 
 unsigned int BTN_MIDDLE ; 
 int EINVAL ; 
 struct f03_data* FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct rmi_function *fn, unsigned int button,
			     int value)
{
	struct f03_data *f03 = FUNC1(&fn->dev);
	unsigned int bit;

	if (button < BTN_LEFT || button > BTN_MIDDLE)
		return -EINVAL;

	bit = FUNC0(button - BTN_LEFT);

	if (value)
		f03->overwrite_buttons |= bit;
	else
		f03->overwrite_buttons &= ~bit;

	return 0;
}