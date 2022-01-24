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
struct vic {int /*<<< orphan*/  clk; int /*<<< orphan*/  rst; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct vic* FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct vic *vic = FUNC2(dev);
	int err;

	err = FUNC1(vic->clk);
	if (err < 0)
		return err;

	FUNC4(10, 20);

	err = FUNC3(vic->rst);
	if (err < 0)
		goto disable;

	FUNC4(10, 20);

	return 0;

disable:
	FUNC0(vic->clk);
	return err;
}