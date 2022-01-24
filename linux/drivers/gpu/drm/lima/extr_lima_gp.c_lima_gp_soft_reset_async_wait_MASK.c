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
typedef  int u32 ;
struct TYPE_2__ {int async_reset; } ;
struct lima_ip {TYPE_1__ data; scalar_t__ iomem; struct lima_device* dev; } ;
struct lima_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIMA_GP_INT_CLEAR ; 
 int /*<<< orphan*/  LIMA_GP_INT_MASK ; 
 scalar_t__ LIMA_GP_INT_RAWSTAT ; 
 int /*<<< orphan*/  LIMA_GP_IRQ_MASK_ALL ; 
 int /*<<< orphan*/  LIMA_GP_IRQ_MASK_USED ; 
 int LIMA_GP_IRQ_RESET_COMPLETED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct lima_ip *ip)
{
	struct lima_device *dev = ip->dev;
	int err;
	u32 v;

	if (!ip->data.async_reset)
		return 0;

	err = FUNC2(ip->iomem + LIMA_GP_INT_RAWSTAT, v,
				 v & LIMA_GP_IRQ_RESET_COMPLETED,
				 0, 100);
	if (err) {
		FUNC0(dev->dev, "gp soft reset time out\n");
		return err;
	}

	FUNC1(LIMA_GP_INT_CLEAR, LIMA_GP_IRQ_MASK_ALL);
	FUNC1(LIMA_GP_INT_MASK, LIMA_GP_IRQ_MASK_USED);

	ip->data.async_reset = false;
	return 0;
}