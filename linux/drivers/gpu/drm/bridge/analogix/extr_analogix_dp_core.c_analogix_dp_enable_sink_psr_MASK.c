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
struct analogix_dp_device {int psr_supported; int /*<<< orphan*/  dev; int /*<<< orphan*/  aux; } ;

/* Variables and functions */
 unsigned char DP_PSR_CRC_VERIFICATION ; 
 unsigned char DP_PSR_ENABLE ; 
 int /*<<< orphan*/  DP_PSR_EN_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static int FUNC4(struct analogix_dp_device *dp)
{
	unsigned char psr_en;
	int ret;

	/* Disable psr function */
	ret = FUNC2(&dp->aux, DP_PSR_EN_CFG, &psr_en);
	if (ret != 1) {
		FUNC1(dp->dev, "failed to get psr config\n");
		goto end;
	}

	psr_en &= ~DP_PSR_ENABLE;
	ret = FUNC3(&dp->aux, DP_PSR_EN_CFG, psr_en);
	if (ret != 1) {
		FUNC1(dp->dev, "failed to disable panel psr\n");
		goto end;
	}

	/* Main-Link transmitter remains active during PSR active states */
	psr_en = DP_PSR_CRC_VERIFICATION;
	ret = FUNC3(&dp->aux, DP_PSR_EN_CFG, psr_en);
	if (ret != 1) {
		FUNC1(dp->dev, "failed to set panel psr\n");
		goto end;
	}

	/* Enable psr function */
	psr_en = DP_PSR_ENABLE | DP_PSR_CRC_VERIFICATION;
	ret = FUNC3(&dp->aux, DP_PSR_EN_CFG, psr_en);
	if (ret != 1) {
		FUNC1(dp->dev, "failed to set panel psr\n");
		goto end;
	}

	FUNC0(dp);

	dp->psr_supported = true;

	return 0;
end:
	FUNC1(dp->dev, "enable psr fail, force to disable psr\n");

	return ret;
}