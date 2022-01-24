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
struct lima_ip {int /*<<< orphan*/  irq; struct lima_device* dev; } ;
struct lima_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lima_ip*) ; 
 int /*<<< orphan*/  FUNC2 (struct lima_ip*) ; 
 int /*<<< orphan*/  lima_pp_bcast_irq_handler ; 

int FUNC3(struct lima_ip *ip)
{
	struct lima_device *dev = ip->dev;
	int err;

	err = FUNC1(dev->dev, ip->irq, lima_pp_bcast_irq_handler,
			       IRQF_SHARED, FUNC2(ip), ip);
	if (err) {
		FUNC0(dev->dev, "pp %s fail to request irq\n",
			FUNC2(ip));
		return err;
	}

	return 0;
}