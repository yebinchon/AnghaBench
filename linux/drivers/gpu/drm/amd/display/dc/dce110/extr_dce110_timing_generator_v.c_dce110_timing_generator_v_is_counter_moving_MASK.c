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
struct timing_generator {int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTCV_STATUS_POSITION ; 
 int /*<<< orphan*/  CRTC_HORZ_COUNT ; 
 int /*<<< orphan*/  CRTC_VERT_COUNT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTCV_STATUS_POSITION ; 

__attribute__((used)) static bool FUNC2(struct timing_generator *tg)
{
	uint32_t value;
	uint32_t h1 = 0;
	uint32_t h2 = 0;
	uint32_t v1 = 0;
	uint32_t v2 = 0;

	value = FUNC0(tg->ctx, mmCRTCV_STATUS_POSITION);

	h1 = FUNC1(
			value,
			CRTCV_STATUS_POSITION,
			CRTC_HORZ_COUNT);

	v1 = FUNC1(
			value,
			CRTCV_STATUS_POSITION,
			CRTC_VERT_COUNT);

	value = FUNC0(tg->ctx, mmCRTCV_STATUS_POSITION);

	h2 = FUNC1(
			value,
			CRTCV_STATUS_POSITION,
			CRTC_HORZ_COUNT);

	v2 = FUNC1(
			value,
			CRTCV_STATUS_POSITION,
			CRTC_VERT_COUNT);

	if (h1 == h2 && v1 == v2)
		return false;
	else
		return true;
}