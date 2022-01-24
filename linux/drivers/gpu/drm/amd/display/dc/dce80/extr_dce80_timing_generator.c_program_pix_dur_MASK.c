#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
struct timing_generator {int /*<<< orphan*/  ctx; } ;
struct TYPE_3__ {scalar_t__ dmif; } ;
struct TYPE_4__ {TYPE_1__ offsets; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  DPG_PIPE_ARBITRATION_CONTROL1 ; 
 int /*<<< orphan*/  PIXEL_DURATION ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ mmDMIF_PG0_DPG_PIPE_ARBITRATION_CONTROL1 ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct timing_generator *tg, uint32_t pix_clk_100hz)
{
	uint64_t pix_dur;
	uint32_t addr = mmDMIF_PG0_DPG_PIPE_ARBITRATION_CONTROL1
					+ FUNC0(tg)->offsets.dmif;
	uint32_t value = FUNC2(tg->ctx, addr);

	if (pix_clk_100hz == 0)
		return;

	pix_dur = FUNC1(10000000000ull, pix_clk_100hz);

	FUNC4(
		value,
		pix_dur,
		DPG_PIPE_ARBITRATION_CONTROL1,
		PIXEL_DURATION);

	FUNC3(tg->ctx, addr, value);
}