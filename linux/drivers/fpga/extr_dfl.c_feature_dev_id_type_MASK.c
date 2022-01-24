#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  name; } ;
typedef  enum dfl_id_type { ____Placeholder_dfl_id_type } dfl_id_type ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int DFL_ID_MAX ; 
 TYPE_1__* dfl_devs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum dfl_id_type FUNC2(struct platform_device *pdev)
{
	int i;

	for (i = 0; i < FUNC0(dfl_devs); i++)
		if (!FUNC1(dfl_devs[i].name, pdev->name))
			return i;

	return DFL_ID_MAX;
}