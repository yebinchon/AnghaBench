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
struct of_phandle_args {int /*<<< orphan*/  args; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct device*,struct of_phandle_args*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
			  struct of_phandle_args *spec)
{
	if (!FUNC2(dev))
		return -ENODEV;

	FUNC0(dev, spec->args, 1);

	/* Initialize once - xlate() will call multiple times */
	if (FUNC3(dev))
		return 0;

	return FUNC1(dev, spec);
}