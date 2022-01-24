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
struct stream_encoder {int dummy; } ;
struct dce110_stream_encoder {int dummy; } ;

/* Variables and functions */
 struct dce110_stream_encoder* FUNC0 (struct stream_encoder*) ; 
 int /*<<< orphan*/  DP_SEC_AIP_ENABLE ; 
 int /*<<< orphan*/  DP_SEC_ASP_ENABLE ; 
 int /*<<< orphan*/  DP_SEC_ATP_ENABLE ; 
 int /*<<< orphan*/  DP_SEC_CNTL ; 
 int /*<<< orphan*/  DP_SEC_STREAM_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(
	struct stream_encoder *enc)
{
	struct dce110_stream_encoder *enc110 = FUNC0(enc);

	/* Enable Audio packets */
	FUNC1(DP_SEC_CNTL, DP_SEC_ASP_ENABLE, 1);

	/* Program the ATP and AIP next */
	FUNC2(DP_SEC_CNTL,
			DP_SEC_ATP_ENABLE, 1,
			DP_SEC_AIP_ENABLE, 1);

	/* Program STREAM_ENABLE after all the other enables. */
	FUNC1(DP_SEC_CNTL, DP_SEC_STREAM_ENABLE, 1);
}