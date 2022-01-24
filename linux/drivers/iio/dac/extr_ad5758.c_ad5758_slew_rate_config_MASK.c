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
typedef  scalar_t__ u64 ;
struct ad5758_state {scalar_t__ slew_time; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 scalar_t__ AD5758_FULL_SCALE_MICRO ; 
 int FUNC0 (scalar_t__*) ; 
 scalar_t__ S64_MAX ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__*,int,scalar_t__) ; 
 int FUNC3 (struct ad5758_state*,unsigned int,unsigned int) ; 
 scalar_t__* ad5758_sr_clk ; 
 scalar_t__* ad5758_sr_step ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct ad5758_state *st)
{
	unsigned int sr_clk_idx, sr_step_idx;
	int i, res;
	s64 diff_new, diff_old;
	u64 sr_step, calc_slew_time;

	sr_clk_idx = 0;
	sr_step_idx = 0;
	diff_old = S64_MAX;
	/*
	 * The slew time can be determined by using the formula:
	 * Slew Time = (Full Scale Out / (Step Size x Update Clk Freq))
	 * where Slew time is expressed in microseconds
	 * Given the desired slew time, the following algorithm determines the
	 * best match for the step size and the update clock frequency.
	 */
	for (i = 0; i < FUNC0(ad5758_sr_clk); i++) {
		/*
		 * Go through each valid update clock freq and determine a raw
		 * value for the step size by using the formula:
		 * Step Size = Full Scale Out / (Update Clk Freq * Slew Time)
		 */
		sr_step = AD5758_FULL_SCALE_MICRO;
		FUNC4(sr_step, ad5758_sr_clk[i]);
		FUNC4(sr_step, st->slew_time);
		/*
		 * After a raw value for step size was determined, find the
		 * closest valid match
		 */
		res = FUNC2(ad5758_sr_step,
						FUNC0(ad5758_sr_step),
						sr_step);
		/* Calculate the slew time */
		calc_slew_time = AD5758_FULL_SCALE_MICRO;
		FUNC4(calc_slew_time, ad5758_sr_step[res]);
		FUNC4(calc_slew_time, ad5758_sr_clk[i]);
		/*
		 * Determine with how many microseconds the calculated slew time
		 * is different from the desired slew time and store the diff
		 * for the next iteration
		 */
		diff_new = FUNC1(st->slew_time - calc_slew_time);
		if (diff_new < diff_old) {
			diff_old = diff_new;
			sr_clk_idx = i;
			sr_step_idx = res;
		}
	}

	return FUNC3(st, sr_clk_idx, sr_step_idx);
}