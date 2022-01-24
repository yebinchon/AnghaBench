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
struct vic {int booted; int /*<<< orphan*/  clk; int /*<<< orphan*/  rst; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct vic* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct vic *vic = FUNC1(dev);
	int err;

	err = FUNC2(vic->rst);
	if (err < 0)
		return err;

	FUNC3(2000, 4000);

	FUNC0(vic->clk);

	vic->booted = false;

	return 0;
}