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
typedef  int /*<<< orphan*/  uint32_t ;
struct timing_generator {int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTCV_BLANK_CONTROL ; 
 int /*<<< orphan*/  CRTC_BLANK_DATA_EN ; 
 int /*<<< orphan*/  CRTC_BLANK_DE_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTCV_BLANK_CONTROL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct timing_generator *tg)
{
	uint32_t addr = mmCRTCV_BLANK_CONTROL;
	uint32_t value = FUNC0(tg->ctx, addr);

	FUNC2(
		value,
		0,
		CRTCV_BLANK_CONTROL,
		CRTC_BLANK_DATA_EN);

	FUNC2(
		value,
		0,
		CRTCV_BLANK_CONTROL,
		CRTC_BLANK_DE_MODE);

	FUNC1(tg->ctx, addr, value);
}