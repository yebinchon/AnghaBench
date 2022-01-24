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
struct w8001 {scalar_t__ open_count; int /*<<< orphan*/  mutex; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  W8001_CMD_STOP ; 
 struct w8001* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct w8001*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct input_dev *dev)
{
	struct w8001 *w8001 = FUNC0(dev);

	FUNC1(&w8001->mutex);

	if (--w8001->open_count == 0)
		FUNC3(w8001, W8001_CMD_STOP, false);

	FUNC2(&w8001->mutex);
}