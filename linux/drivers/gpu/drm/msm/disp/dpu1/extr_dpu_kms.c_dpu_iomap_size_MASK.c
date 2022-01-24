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
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 struct resource* FUNC1 (struct platform_device*,int /*<<< orphan*/ ,char const*) ; 
 unsigned long FUNC2 (struct resource*) ; 

__attribute__((used)) static unsigned long FUNC3(struct platform_device *pdev,
				    const char *name)
{
	struct resource *res;

	res = FUNC1(pdev, IORESOURCE_MEM, name);
	if (!res) {
		FUNC0("failed to get memory resource: %s\n", name);
		return 0;
	}

	return FUNC2(res);
}