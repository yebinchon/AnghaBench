#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct input_dev {TYPE_1__ dev; } ;
struct cyttsp4_mt_data {int /*<<< orphan*/  report_lock; int /*<<< orphan*/  is_suspended; } ;

/* Variables and functions */
 struct cyttsp4_mt_data* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct input_dev *input)
{
	struct cyttsp4_mt_data *md = FUNC0(input);
	FUNC1(&md->report_lock);
	if (!md->is_suspended)
		FUNC3(input->dev.parent);
	FUNC2(&md->report_lock);
}