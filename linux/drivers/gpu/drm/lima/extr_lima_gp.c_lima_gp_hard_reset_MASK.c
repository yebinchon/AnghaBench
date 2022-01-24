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
struct lima_ip {struct lima_device* dev; } ;
struct lima_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIMA_GP_CMD ; 
 int LIMA_GP_CMD_RESET ; 
 int /*<<< orphan*/  LIMA_GP_INT_CLEAR ; 
 int /*<<< orphan*/  LIMA_GP_INT_MASK ; 
 int LIMA_GP_IRQ_MASK_ALL ; 
 int LIMA_GP_IRQ_MASK_USED ; 
 int /*<<< orphan*/  LIMA_GP_PERF_CNT_0_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  lima_gp_hard_reset_poll ; 
 int FUNC2 (struct lima_ip*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct lima_ip *ip)
{
	struct lima_device *dev = ip->dev;
	int ret;

	FUNC1(LIMA_GP_PERF_CNT_0_LIMIT, 0xC0FFE000);
	FUNC1(LIMA_GP_INT_MASK, 0);
	FUNC1(LIMA_GP_CMD, LIMA_GP_CMD_RESET);
	ret = FUNC2(ip, lima_gp_hard_reset_poll, 10, 100);
	if (ret) {
		FUNC0(dev->dev, "gp hard reset timeout\n");
		return ret;
	}

	FUNC1(LIMA_GP_PERF_CNT_0_LIMIT, 0);
	FUNC1(LIMA_GP_INT_CLEAR, LIMA_GP_IRQ_MASK_ALL);
	FUNC1(LIMA_GP_INT_MASK, LIMA_GP_IRQ_MASK_USED);
	return 0;
}