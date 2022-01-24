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
struct drm_encoder {int dummy; } ;
struct cdn_dp_device {int /*<<< orphan*/  event_work; int /*<<< orphan*/  connected; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; scalar_t__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (struct cdn_dp_device*) ; 
 int FUNC2 (struct cdn_dp_device*) ; 
 struct cdn_dp_device* FUNC3 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct drm_encoder *encoder)
{
	struct cdn_dp_device *dp = FUNC3(encoder);
	int ret;

	FUNC4(&dp->lock);
	if (dp->active) {
		ret = FUNC2(dp);
		if (ret) {
			FUNC0(dp->dev, "Failed to disable encoder %d\n",
				      ret);
		}
	}
	FUNC5(&dp->lock);

	/*
	 * In the following 2 cases, we need to run the event_work to re-enable
	 * the DP:
	 * 1. If there is not just one port device is connected, and remove one
	 *    device from a port, the DP will be disabled here, at this case,
	 *    run the event_work to re-open DP for the other port.
	 * 2. If re-training or re-config failed, the DP will be disabled here.
	 *    run the event_work to re-connect it.
	 */
	if (!dp->connected && FUNC1(dp))
		FUNC6(&dp->event_work);
}