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
struct timing_generator {int dummy; } ;
struct dc_crtc_timing {int /*<<< orphan*/  pix_clk_100hz; } ;
typedef  enum signal_type { ____Placeholder_signal_type } signal_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timing_generator*,struct dc_crtc_timing const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct timing_generator*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct timing_generator *tg,
	const struct dc_crtc_timing *timing,
	int vready_offset,
	int vstartup_start,
	int vupdate_offset,
	int vupdate_width,
	const enum signal_type signal,
	bool use_vbios)
{
	if (!use_vbios)
		FUNC1(tg, timing->pix_clk_100hz);

	FUNC0(tg, timing, 0, 0, 0, 0, 0, use_vbios);
}