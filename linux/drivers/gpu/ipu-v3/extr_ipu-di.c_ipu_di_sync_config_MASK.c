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
typedef  int u32 ;
struct ipu_di {int /*<<< orphan*/  id; TYPE_1__* ipu; } ;
struct di_sync_config {int run_count; int offset_count; int repeat_count; int cnt_up; int cnt_down; int /*<<< orphan*/  cnt_polarity_clr_src; int /*<<< orphan*/  cnt_polarity_trigger_src; int /*<<< orphan*/  cnt_clr_src; int /*<<< orphan*/  cnt_polarity_gen_en; int /*<<< orphan*/  offset_src; int /*<<< orphan*/  run_src; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int DI_SW_GEN1_AUTO_RELOAD ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct ipu_di*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ipu_di*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct ipu_di *di, struct di_sync_config *config,
		int start, int count)
{
	u32 reg;
	int i;

	for (i = 0; i < count; i++) {
		struct di_sync_config *c = &config[i];
		int wave_gen = start + i + 1;

		if ((c->run_count >= 0x1000) || (c->offset_count >= 0x1000) ||
				(c->repeat_count >= 0x1000) ||
				(c->cnt_up >= 0x400) ||
				(c->cnt_down >= 0x400)) {
			FUNC13(di->ipu->dev, "DI%d counters out of range.\n",
					di->id);
			return;
		}

		reg = FUNC4(c->run_count) |
			FUNC5(c->run_src) |
			FUNC2(c->offset_count) |
			FUNC3(c->offset_src);
		FUNC15(di, reg, FUNC1(wave_gen));

		reg = FUNC10(c->cnt_polarity_gen_en) |
			FUNC7(c->cnt_clr_src) |
			FUNC11(
					c->cnt_polarity_trigger_src) |
			FUNC9(c->cnt_polarity_clr_src) |
			FUNC8(c->cnt_down) |
			FUNC12(c->cnt_up);

		/* Enable auto reload */
		if (c->repeat_count == 0)
			reg |= DI_SW_GEN1_AUTO_RELOAD;

		FUNC15(di, reg, FUNC6(wave_gen));

		reg = FUNC14(di, FUNC0(wave_gen));
		reg &= ~(0xffff << (16 * ((wave_gen - 1) & 0x1)));
		reg |= c->repeat_count << (16 * ((wave_gen - 1) & 0x1));
		FUNC15(di, reg, FUNC0(wave_gen));
	}
}