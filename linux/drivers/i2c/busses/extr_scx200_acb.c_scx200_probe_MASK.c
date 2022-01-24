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
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct scx200_acb_iface {TYPE_1__ adapter; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC2 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,struct scx200_acb_iface*) ; 
 struct scx200_acb_iface* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct scx200_acb_iface *iface;
	struct resource *res;

	res = FUNC2(pdev, IORESOURCE_IO, 0);
	if (!res) {
		FUNC0(&pdev->dev, "can't fetch device resource info\n");
		return -ENODEV;
	}

	iface = FUNC4("CS5535", res->start, 0, &pdev->dev);
	if (!iface)
		return -EIO;

	FUNC1(&pdev->dev, "SCx200 device '%s' registered\n",
			iface->adapter.name);
	FUNC3(pdev, iface);

	return 0;
}