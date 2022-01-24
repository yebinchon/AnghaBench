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

/* Variables and functions */
 int /*<<< orphan*/  DRVNAME ; 
 int ENOMEM ; 
 struct platform_device* FUNC0 (int) ; 
 int FUNC1 (struct platform_device*) ; 
 struct platform_device* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 int FUNC4 (unsigned int) ; 
 struct platform_device** zone_devices ; 

__attribute__((used)) static struct platform_device *FUNC5(unsigned int cpu)
{
	int err, zoneid = FUNC4(cpu);
	struct platform_device *pdev;

	if (zoneid < 0)
		return FUNC0(-ENOMEM);

	pdev = FUNC2(DRVNAME, zoneid);
	if (!pdev)
		return FUNC0(-ENOMEM);

	err = FUNC1(pdev);
	if (err) {
		FUNC3(pdev);
		return FUNC0(err);
	}

	zone_devices[zoneid] = pdev;
	return pdev;
}