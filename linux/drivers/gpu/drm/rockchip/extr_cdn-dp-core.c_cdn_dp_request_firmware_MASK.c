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
struct cdn_dp_device {int fw_loaded; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  fw; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDN_DP_FIRMWARE ; 
 int /*<<< orphan*/  CDN_FW_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int ENOENT ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct cdn_dp_device *dp)
{
	int ret;
	unsigned long timeout = jiffies + FUNC2(CDN_FW_TIMEOUT_MS);
	unsigned long sleep = 1000;

	FUNC1(!FUNC4(&dp->lock));

	if (dp->fw_loaded)
		return 0;

	/* Drop the lock before getting the firmware to avoid blocking boot */
	FUNC6(&dp->lock);

	while (FUNC8(jiffies, timeout)) {
		ret = FUNC7(&dp->fw, CDN_DP_FIRMWARE, dp->dev);
		if (ret == -ENOENT) {
			FUNC3(sleep);
			sleep *= 2;
			continue;
		} else if (ret) {
			FUNC0(dp->dev,
				      "failed to request firmware: %d\n", ret);
			goto out;
		}

		dp->fw_loaded = true;
		ret = 0;
		goto out;
	}

	FUNC0(dp->dev, "Timed out trying to load firmware\n");
	ret = -ETIMEDOUT;
out:
	FUNC5(&dp->lock);
	return ret;
}