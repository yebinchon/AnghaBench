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
struct gb_module {size_t num_interfaces; int /*<<< orphan*/ * interfaces; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_module*) ; 

int FUNC4(struct gb_module *module)
{
	size_t i;
	int ret;

	ret = FUNC1(&module->dev);
	if (ret) {
		FUNC0(&module->dev, "failed to register module: %d\n", ret);
		return ret;
	}

	FUNC3(module);

	for (i = 0; i < module->num_interfaces; ++i)
		FUNC2(module->interfaces[i]);

	return 0;
}