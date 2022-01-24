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
typedef  scalar_t__ uint32_t ;
struct stream_encoder {int dummy; } ;
struct dce110_stream_encoder {int dummy; } ;

/* Variables and functions */
 struct dce110_stream_encoder* FUNC0 (struct stream_encoder*) ; 
 int /*<<< orphan*/  DP_SEC_ACM_ENABLE ; 
 int /*<<< orphan*/  DP_SEC_AIP_ENABLE ; 
 int /*<<< orphan*/  DP_SEC_ASP_ENABLE ; 
 int /*<<< orphan*/  DP_SEC_ATP_ENABLE ; 
 int /*<<< orphan*/  DP_SEC_CNTL ; 
 int /*<<< orphan*/  DP_SEC_STREAM_ENABLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(
	struct stream_encoder *enc)
{
	struct dce110_stream_encoder *enc110 = FUNC0(enc);
	uint32_t value = 0;

	/* Disable Audio packets */
	FUNC3(DP_SEC_CNTL,
			DP_SEC_ASP_ENABLE, 0,
			DP_SEC_ATP_ENABLE, 0,
			DP_SEC_AIP_ENABLE, 0,
			DP_SEC_ACM_ENABLE, 0,
			DP_SEC_STREAM_ENABLE, 0);

	/* This register shared with encoder info frame. Therefore we need to
	keep master enabled if at least on of the fields is not 0 */
	value = FUNC1(DP_SEC_CNTL);
	if (value != 0)
		FUNC2(DP_SEC_CNTL, DP_SEC_STREAM_ENABLE, 1);

}