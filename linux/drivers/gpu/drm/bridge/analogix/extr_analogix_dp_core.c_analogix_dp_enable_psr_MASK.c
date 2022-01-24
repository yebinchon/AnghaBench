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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {int HB1; int HB2; int HB3; scalar_t__ HB0; } ;
struct dp_sdp {int* db; TYPE_1__ sdp_header; } ;
struct analogix_dp_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  aux; } ;
typedef  int /*<<< orphan*/  psr_vsc ;

/* Variables and functions */
 scalar_t__ DP_PSR_SINK_ACTIVE_RFB ; 
 int /*<<< orphan*/  DP_PSR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int EDP_VSC_PSR_CRC_VALUES_VALID ; 
 int EDP_VSC_PSR_STATE_ACTIVE ; 
 int /*<<< orphan*/  POWER_ALL ; 
 int FUNC1 (struct analogix_dp_device*,struct dp_sdp*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct analogix_dp_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct dp_sdp*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct analogix_dp_device *dp)
{
	struct dp_sdp psr_vsc;
	int ret;
	u8 sink;

	ret = FUNC3(&dp->aux, DP_PSR_STATUS, &sink);
	if (ret != 1)
		FUNC0(dp->dev, "Failed to read psr status %d\n", ret);
	else if (sink == DP_PSR_SINK_ACTIVE_RFB)
		return 0;

	/* Prepare VSC packet as per EDP 1.4 spec, Table 6.9 */
	FUNC4(&psr_vsc, 0, sizeof(psr_vsc));
	psr_vsc.sdp_header.HB0 = 0;
	psr_vsc.sdp_header.HB1 = 0x7;
	psr_vsc.sdp_header.HB2 = 0x2;
	psr_vsc.sdp_header.HB3 = 0x8;
	psr_vsc.db[0] = 0;
	psr_vsc.db[1] = EDP_VSC_PSR_STATE_ACTIVE | EDP_VSC_PSR_CRC_VALUES_VALID;

	ret = FUNC1(dp, &psr_vsc, true);
	if (!ret)
		FUNC2(dp, POWER_ALL, true);

	return ret;
}