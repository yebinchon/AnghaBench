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
struct dce_mem_input {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPG_PIPE_URGENCY_CONTROL ; 
 int /*<<< orphan*/  DPG_WATERMARK_MASK_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  URGENCY_HIGH_WATERMARK ; 
 int /*<<< orphan*/  URGENCY_LOW_WATERMARK ; 
 int /*<<< orphan*/  URGENCY_WATERMARK_MASK ; 

__attribute__((used)) static void FUNC2(
	struct dce_mem_input *dce_mi,
	uint32_t wm_select,
	uint32_t urgency_low_wm,
	uint32_t urgency_high_wm)
{
	FUNC1(DPG_WATERMARK_MASK_CONTROL,
		URGENCY_WATERMARK_MASK, wm_select);

	FUNC0(DPG_PIPE_URGENCY_CONTROL, 0,
		URGENCY_LOW_WATERMARK, urgency_low_wm,
		URGENCY_HIGH_WATERMARK, urgency_high_wm);
}