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
struct pegasus {int is_open; int /*<<< orphan*/  intf; int /*<<< orphan*/  pm_mutex; int /*<<< orphan*/  init; int /*<<< orphan*/  irq; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pegasus* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct input_dev *dev)
{
	struct pegasus *pegasus = FUNC1(dev);

	FUNC2(&pegasus->pm_mutex);
	FUNC5(pegasus->irq);
	FUNC0(&pegasus->init);
	pegasus->is_open = false;
	FUNC3(&pegasus->pm_mutex);

	FUNC4(pegasus->intf);
}