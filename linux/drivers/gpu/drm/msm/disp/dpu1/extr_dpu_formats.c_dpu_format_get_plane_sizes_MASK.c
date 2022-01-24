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
struct dpu_hw_fmt_layout {int dummy; } ;
struct dpu_format {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dpu_format const*) ; 
 scalar_t__ FUNC1 (struct dpu_format const*) ; 
 scalar_t__ const DPU_MAX_IMG_HEIGHT ; 
 scalar_t__ const DPU_MAX_IMG_WIDTH ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EINVAL ; 
 int ERANGE ; 
 int FUNC3 (struct dpu_format const*,scalar_t__ const,scalar_t__ const,struct dpu_hw_fmt_layout*,scalar_t__ const*) ; 
 int FUNC4 (struct dpu_format const*,scalar_t__ const,scalar_t__ const,struct dpu_hw_fmt_layout*) ; 

__attribute__((used)) static int FUNC5(
		const struct dpu_format *fmt,
		const uint32_t w,
		const uint32_t h,
		struct dpu_hw_fmt_layout *layout,
		const uint32_t *pitches)
{
	if (!layout || !fmt) {
		FUNC2("invalid pointer\n");
		return -EINVAL;
	}

	if ((w > DPU_MAX_IMG_WIDTH) || (h > DPU_MAX_IMG_HEIGHT)) {
		FUNC2("image dimensions outside max range\n");
		return -ERANGE;
	}

	if (FUNC1(fmt) || FUNC0(fmt))
		return FUNC4(fmt, w, h, layout);

	return FUNC3(fmt, w, h, layout, pitches);
}