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
typedef  int u64 ;
typedef  int u32 ;
struct tegra_sor_params {int precision; unsigned int ratio; scalar_t__ error; int active_count; int active_polarity; int active_frac; unsigned int tu_size; int /*<<< orphan*/  num_clocks; } ;
struct tegra_sor {int dummy; } ;
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 
 int FUNC2 (int const,int const) ; 

__attribute__((used)) static int FUNC3(struct tegra_sor *sor,
				    struct tegra_sor_params *params,
				    unsigned int tu_size)
{
	u64 active_sym, active_count, frac, approx;
	u32 active_polarity, active_frac = 0;
	const u64 f = params->precision;
	s64 error;

	active_sym = params->ratio * tu_size;
	active_count = FUNC2(active_sym, f) * f;
	frac = active_sym - active_count;

	/* fraction < 0.5 */
	if (frac >= (f / 2)) {
		active_polarity = 1;
		frac = f - frac;
	} else {
		active_polarity = 0;
	}

	if (frac != 0) {
		frac = FUNC2(f * f,  frac); /* 1/fraction */
		if (frac <= (15 * f)) {
			active_frac = FUNC2(frac, f);

			/* round up */
			if (active_polarity)
				active_frac++;
		} else {
			active_frac = active_polarity ? 1 : 15;
		}
	}

	if (active_frac == 1)
		active_polarity = 0;

	if (active_polarity == 1) {
		if (active_frac) {
			approx = active_count + (active_frac * (f - 1)) * f;
			approx = FUNC2(approx, active_frac * f);
		} else {
			approx = active_count + f;
		}
	} else {
		if (active_frac)
			approx = active_count + FUNC2(f, active_frac);
		else
			approx = active_count;
	}

	error = FUNC1(active_sym - approx, tu_size);
	error *= params->num_clocks;

	if (error <= 0 && FUNC0(error) < params->error) {
		params->active_count = FUNC2(active_count, f);
		params->active_polarity = active_polarity;
		params->active_frac = active_frac;
		params->error = FUNC0(error);
		params->tu_size = tu_size;

		if (error == 0)
			return true;
	}

	return false;
}