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
typedef  int uint32_t ;
struct timing_generator {int /*<<< orphan*/  ctx; } ;
struct dce110_timing_generator {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC_CONTROL ; 
 int /*<<< orphan*/  CRTC_CURRENT_MASTER_EN_STATE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct dce110_timing_generator* FUNC1 (struct timing_generator*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTC_CONTROL ; 

__attribute__((used)) static bool FUNC4(struct timing_generator *tg)
{
	uint32_t addr = 0;
	uint32_t value = 0;
	uint32_t field = 0;
	struct dce110_timing_generator *tg110 = FUNC1(tg);

	addr = FUNC0(mmCRTC_CONTROL);
	value = FUNC2(tg->ctx, addr);
	field = FUNC3(value, CRTC_CONTROL,
				    CRTC_CURRENT_MASTER_EN_STATE);
	return field == 1;
}