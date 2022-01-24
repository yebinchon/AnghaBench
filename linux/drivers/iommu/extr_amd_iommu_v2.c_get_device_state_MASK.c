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
typedef  int /*<<< orphan*/  u16 ;
struct device_state {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 struct device_state* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  state_lock ; 

__attribute__((used)) static struct device_state *FUNC4(u16 devid)
{
	struct device_state *dev_state;
	unsigned long flags;

	FUNC2(&state_lock, flags);
	dev_state = FUNC0(devid);
	if (dev_state != NULL)
		FUNC1(&dev_state->count);
	FUNC3(&state_lock, flags);

	return dev_state;
}