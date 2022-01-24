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
struct hubbub {int dummy; } ;
struct dcn20_hubbub {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DCHUBBUB_GLOBAL_TIMER_CNTL ; 
 int /*<<< orphan*/  DCHUBBUB_GLOBAL_TIMER_ENABLE ; 
 int /*<<< orphan*/  DCHUBBUB_GLOBAL_TIMER_REFDIV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int*) ; 
 struct dcn20_hubbub* FUNC2 (struct hubbub*) ; 

void FUNC3(struct hubbub *hubbub,
		unsigned int dccg_ref_freq_inKhz,
		unsigned int *dchub_ref_freq_inKhz)
{
	struct dcn20_hubbub *hubbub1 = FUNC2(hubbub);
	uint32_t ref_div = 0;
	uint32_t ref_en = 0;

	FUNC1(DCHUBBUB_GLOBAL_TIMER_CNTL, DCHUBBUB_GLOBAL_TIMER_REFDIV, &ref_div,
			DCHUBBUB_GLOBAL_TIMER_ENABLE, &ref_en);

	if (ref_en) {
		if (ref_div == 2)
			*dchub_ref_freq_inKhz = dccg_ref_freq_inKhz / 2;
		else
			*dchub_ref_freq_inKhz = dccg_ref_freq_inKhz;

		// DC hub reference frequency must be around 50Mhz, otherwise there may be
		// overflow/underflow issues when doing HUBBUB programming
		if (*dchub_ref_freq_inKhz < 40000 || *dchub_ref_freq_inKhz > 60000)
			FUNC0(false);

		return;
	} else {
		*dchub_ref_freq_inKhz = dccg_ref_freq_inKhz;

		// HUBBUB global timer must be enabled.
		FUNC0(false);
		return;
	}
}