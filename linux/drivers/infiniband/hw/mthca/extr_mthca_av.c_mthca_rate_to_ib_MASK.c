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
typedef  int u8 ;
struct TYPE_2__ {int stat_rate_support; } ;
struct mthca_dev {int /*<<< orphan*/ * rate; TYPE_1__ limits; } ;
typedef  enum ib_rate { ____Placeholder_ib_rate } ib_rate ;

/* Variables and functions */
 int IB_RATE_2_5_GBPS ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mthca_dev*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 

enum ib_rate FUNC3(struct mthca_dev *dev, u8 mthca_rate, u8 port)
{
	if (FUNC1(dev)) {
		/* Handle old Arbel FW */
		if (dev->limits.stat_rate_support == 0x3 && mthca_rate)
			return IB_RATE_2_5_GBPS;

		return FUNC0(mthca_rate, dev->rate[port - 1]);
	} else
		return FUNC2(mthca_rate, dev->rate[port - 1]);
}