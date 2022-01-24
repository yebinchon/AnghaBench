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
struct simtec_i2c_data {TYPE_1__* ioarea; int /*<<< orphan*/  reg; int /*<<< orphan*/  adap; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct simtec_i2c_data*) ; 
 struct simtec_i2c_data* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *dev)
{
	struct simtec_i2c_data *pd = FUNC3(dev);

	FUNC0(&pd->adap);

	FUNC1(pd->reg);
	FUNC4(pd->ioarea->start, FUNC5(pd->ioarea));
	FUNC2(pd);

	return 0;
}