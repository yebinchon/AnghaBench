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
struct platform_device {int dummy; } ;
struct cdns_i3c_master {int /*<<< orphan*/  pclk; int /*<<< orphan*/  sysclk; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct cdns_i3c_master* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct cdns_i3c_master *master = FUNC2(pdev);
	int ret;

	ret = FUNC1(&master->base);
	if (ret)
		return ret;

	FUNC0(master->sysclk);
	FUNC0(master->pclk);

	return 0;
}