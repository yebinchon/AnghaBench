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
struct TYPE_2__ {int async_reset; } ;
struct lima_ip {int /*<<< orphan*/  irq; TYPE_1__ data; struct lima_device* dev; } ;
struct lima_device {int /*<<< orphan*/  gp_version; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  LIMA_GP_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lima_ip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lima_gp_irq_handler ; 
 int /*<<< orphan*/  FUNC3 (struct lima_ip*) ; 
 int /*<<< orphan*/  FUNC4 (struct lima_ip*) ; 
 int FUNC5 (struct lima_ip*) ; 
 int /*<<< orphan*/  FUNC6 (struct lima_ip*) ; 

int FUNC7(struct lima_ip *ip)
{
	struct lima_device *dev = ip->dev;
	int err;

	FUNC3(ip);

	ip->data.async_reset = false;
	FUNC4(ip);
	err = FUNC5(ip);
	if (err)
		return err;

	err = FUNC1(dev->dev, ip->irq, lima_gp_irq_handler,
			       IRQF_SHARED, FUNC6(ip), ip);
	if (err) {
		FUNC0(dev->dev, "gp %s fail to request irq\n",
			FUNC6(ip));
		return err;
	}

	dev->gp_version = FUNC2(LIMA_GP_VERSION);

	return 0;
}