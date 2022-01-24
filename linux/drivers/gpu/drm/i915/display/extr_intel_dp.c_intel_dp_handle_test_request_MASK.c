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
struct TYPE_2__ {int test_type; } ;
struct intel_dp {int /*<<< orphan*/  aux; TYPE_1__ compliance; } ;

/* Variables and functions */
 int DP_TEST_ACK ; 
#define  DP_TEST_LINK_EDID_READ 131 
#define  DP_TEST_LINK_PHY_TEST_PATTERN 130 
#define  DP_TEST_LINK_TRAINING 129 
#define  DP_TEST_LINK_VIDEO_PATTERN 128 
 int DP_TEST_NAK ; 
 int /*<<< orphan*/  DP_TEST_REQUEST ; 
 int /*<<< orphan*/  DP_TEST_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct intel_dp*) ; 
 int FUNC4 (struct intel_dp*) ; 
 int FUNC5 (struct intel_dp*) ; 
 int FUNC6 (struct intel_dp*) ; 

__attribute__((used)) static void FUNC7(struct intel_dp *intel_dp)
{
	u8 response = DP_TEST_NAK;
	u8 request = 0;
	int status;

	status = FUNC1(&intel_dp->aux, DP_TEST_REQUEST, &request);
	if (status <= 0) {
		FUNC0("Could not read test request from sink\n");
		goto update_status;
	}

	switch (request) {
	case DP_TEST_LINK_TRAINING:
		FUNC0("LINK_TRAINING test requested\n");
		response = FUNC4(intel_dp);
		break;
	case DP_TEST_LINK_VIDEO_PATTERN:
		FUNC0("TEST_PATTERN test requested\n");
		response = FUNC6(intel_dp);
		break;
	case DP_TEST_LINK_EDID_READ:
		FUNC0("EDID test requested\n");
		response = FUNC3(intel_dp);
		break;
	case DP_TEST_LINK_PHY_TEST_PATTERN:
		FUNC0("PHY_PATTERN test requested\n");
		response = FUNC5(intel_dp);
		break;
	default:
		FUNC0("Invalid test request '%02x'\n", request);
		break;
	}

	if (response & DP_TEST_ACK)
		intel_dp->compliance.test_type = request;

update_status:
	status = FUNC2(&intel_dp->aux, DP_TEST_RESPONSE, response);
	if (status <= 0)
		FUNC0("Could not write test response to sink\n");
}