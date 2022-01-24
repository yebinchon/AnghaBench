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
struct TYPE_2__ {int /*<<< orphan*/  num_lanes; int /*<<< orphan*/  rate; } ;
struct cdn_dp_device {TYPE_1__ link; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct cdn_dp_device*) ; 
 int FUNC3 (struct cdn_dp_device*) ; 

int FUNC4(struct cdn_dp_device *dp)
{
	int ret;

	ret = FUNC3(dp);
	if (ret) {
		FUNC1(dp->dev, "Failed to start training %d\n", ret);
		return ret;
	}

	ret = FUNC2(dp);
	if (ret) {
		FUNC1(dp->dev, "Failed to get training stat %d\n", ret);
		return ret;
	}

	FUNC0(dp->dev, "rate:0x%x, lanes:%d\n", dp->link.rate,
			  dp->link.num_lanes);
	return ret;
}