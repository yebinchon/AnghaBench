#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  dev_groups; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* extcon_class ; 
 int /*<<< orphan*/  extcon_groups ; 

__attribute__((used)) static int FUNC3(void)
{
	if (!extcon_class) {
		extcon_class = FUNC2(THIS_MODULE, "extcon");
		if (FUNC0(extcon_class))
			return FUNC1(extcon_class);
		extcon_class->dev_groups = extcon_groups;
	}

	return 0;
}