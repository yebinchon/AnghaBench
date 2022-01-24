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
struct TYPE_2__ {int ACK; scalar_t__ PHY_TEST_PATTERN; scalar_t__ LINK_TEST_PATTRN; scalar_t__ LINK_TRAINING; } ;
union test_response {int /*<<< orphan*/  raw; TYPE_1__ bits; } ;
union test_request {int /*<<< orphan*/  raw; TYPE_1__ bits; } ;
typedef  int /*<<< orphan*/  test_response ;
typedef  int /*<<< orphan*/  test_request ;
struct dc_link {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_TEST_REQUEST ; 
 int /*<<< orphan*/  DP_TEST_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (struct dc_link*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_link*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dc_link*) ; 
 int /*<<< orphan*/  FUNC3 (struct dc_link*) ; 
 int /*<<< orphan*/  FUNC4 (struct dc_link*) ; 
 int /*<<< orphan*/  FUNC5 (union test_response*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct dc_link *link)
{
	union test_request test_request;
	union test_response test_response;

	FUNC5(&test_request, 0, sizeof(test_request));
	FUNC5(&test_response, 0, sizeof(test_response));

	FUNC0(
		link,
		DP_TEST_REQUEST,
		&test_request.raw,
		sizeof(union test_request));
	if (test_request.bits.LINK_TRAINING) {
		/* ACK first to let DP RX test box monitor LT sequence */
		test_response.bits.ACK = 1;
		FUNC1(
			link,
			DP_TEST_RESPONSE,
			&test_response.raw,
			sizeof(test_response));
		FUNC3(link);
		/* no acknowledge request is needed again */
		test_response.bits.ACK = 0;
	}
	if (test_request.bits.LINK_TEST_PATTRN) {
		FUNC2(link);
		test_response.bits.ACK = 1;
	}
	if (test_request.bits.PHY_TEST_PATTERN) {
		FUNC4(link);
		test_response.bits.ACK = 1;
	}

	/* send request acknowledgment */
	if (test_response.bits.ACK)
		FUNC1(
			link,
			DP_TEST_RESPONSE,
			&test_response.raw,
			sizeof(test_response));
}