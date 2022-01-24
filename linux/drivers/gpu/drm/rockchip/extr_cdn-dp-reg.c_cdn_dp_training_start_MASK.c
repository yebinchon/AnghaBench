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
typedef  int u8 ;
struct cdn_dp_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  event ;

/* Variables and functions */
 int /*<<< orphan*/  DPTX_READ_EVENT ; 
 int /*<<< orphan*/  DPTX_TRAINING_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int EQ_PHASE_FINISHED ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  LINK_TRAINING_RETRY_MS ; 
 int LINK_TRAINING_RUN ; 
 int /*<<< orphan*/  LINK_TRAINING_TIMEOUT_MS ; 
 int /*<<< orphan*/  MB_MODULE_ID_DP_TX ; 
 int FUNC1 (struct cdn_dp_device*,int*,int) ; 
 int FUNC2 (struct cdn_dp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC3 (struct cdn_dp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned long jiffies ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct cdn_dp_device *dp)
{
	unsigned long timeout;
	u8 msg, event[2];
	int ret;

	msg = LINK_TRAINING_RUN;

	/* start training */
	ret = FUNC2(dp, MB_MODULE_ID_DP_TX, DPTX_TRAINING_CONTROL,
				  sizeof(msg), &msg);
	if (ret)
		goto err_training_start;

	timeout = jiffies + FUNC4(LINK_TRAINING_TIMEOUT_MS);
	while (FUNC6(jiffies, timeout)) {
		FUNC5(LINK_TRAINING_RETRY_MS);
		ret = FUNC2(dp, MB_MODULE_ID_DP_TX,
					  DPTX_READ_EVENT, 0, NULL);
		if (ret)
			goto err_training_start;

		ret = FUNC3(dp, MB_MODULE_ID_DP_TX,
						      DPTX_READ_EVENT,
						      sizeof(event));
		if (ret)
			goto err_training_start;

		ret = FUNC1(dp, event, sizeof(event));
		if (ret)
			goto err_training_start;

		if (event[1] & EQ_PHASE_FINISHED)
			return 0;
	}

	ret = -ETIMEDOUT;

err_training_start:
	FUNC0(dp->dev, "training failed: %d\n", ret);
	return ret;
}