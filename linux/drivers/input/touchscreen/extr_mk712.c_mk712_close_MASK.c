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
struct input_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ MK712_CONTROL ; 
 scalar_t__ mk712_io ; 
 int /*<<< orphan*/  mk712_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct input_dev *dev)
{
	unsigned long flags;

	FUNC1(&mk712_lock, flags);

	FUNC0(0, mk712_io + MK712_CONTROL);

	FUNC2(&mk712_lock, flags);
}