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
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  format; } ;
struct cdn_dp_device {int /*<<< orphan*/  lock; TYPE_1__ audio_info; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFMT_UNUSED ; 
 int FUNC0 (struct cdn_dp_device*,TYPE_1__*) ; 
 struct cdn_dp_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct device *dev, void *data)
{
	struct cdn_dp_device *dp = FUNC1(dev);
	int ret;

	FUNC2(&dp->lock);
	if (!dp->active)
		goto out;

	ret = FUNC0(dp, &dp->audio_info);
	if (!ret)
		dp->audio_info.format = AFMT_UNUSED;
out:
	FUNC3(&dp->lock);
}