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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int test_link_rate; int /*<<< orphan*/  test_lane_count; } ;
struct intel_dp {TYPE_1__ compliance; int /*<<< orphan*/  aux; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_MAX_LANE_COUNT_MASK ; 
 int /*<<< orphan*/  DP_TEST_ACK ; 
 int /*<<< orphan*/  DP_TEST_LANE_COUNT ; 
 int /*<<< orphan*/  DP_TEST_LINK_RATE ; 
 int /*<<< orphan*/  DP_TEST_NAK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_dp*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC4(struct intel_dp *intel_dp)
{
	int status = 0;
	int test_link_rate;
	u8 test_lane_count, test_link_bw;
	/* (DP CTS 1.2)
	 * 4.3.1.11
	 */
	/* Read the TEST_LANE_COUNT and TEST_LINK_RTAE fields (DP CTS 3.1.4) */
	status = FUNC2(&intel_dp->aux, DP_TEST_LANE_COUNT,
				   &test_lane_count);

	if (status <= 0) {
		FUNC0("Lane count read failed\n");
		return DP_TEST_NAK;
	}
	test_lane_count &= DP_MAX_LANE_COUNT_MASK;

	status = FUNC2(&intel_dp->aux, DP_TEST_LINK_RATE,
				   &test_link_bw);
	if (status <= 0) {
		FUNC0("Link Rate read failed\n");
		return DP_TEST_NAK;
	}
	test_link_rate = FUNC1(test_link_bw);

	/* Validate the requested link rate and lane count */
	if (!FUNC3(intel_dp, test_link_rate,
					test_lane_count))
		return DP_TEST_NAK;

	intel_dp->compliance.test_lane_count = test_lane_count;
	intel_dp->compliance.test_link_rate = test_link_rate;

	return DP_TEST_ACK;
}