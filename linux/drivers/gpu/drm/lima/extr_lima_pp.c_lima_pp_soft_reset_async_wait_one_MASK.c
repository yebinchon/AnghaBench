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
 int /*<<< orphan*/  LIMA_PP_INT_CLEAR ; 
 int /*<<< orphan*/  LIMA_PP_INT_MASK ; 
 int /*<<< orphan*/  LIMA_PP_IRQ_MASK_ALL ; 
 int /*<<< orphan*/  LIMA_PP_IRQ_MASK_USED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lima_ip*) ; 
 int FUNC2 (struct lima_ip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  lima_pp_soft_reset_poll ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct lima_ip *ip)
{
	struct lima_device *dev = ip->dev;
	int ret;

	ret = FUNC2(ip, lima_pp_soft_reset_poll, 0, 100);
	if (ret) {
		FUNC0(dev->dev, "pp %s reset time out\n", FUNC1(ip));
		return ret;
	}

	FUNC3(LIMA_PP_INT_CLEAR, LIMA_PP_IRQ_MASK_ALL);
	FUNC3(LIMA_PP_INT_MASK, LIMA_PP_IRQ_MASK_USED);
	return 0;
}