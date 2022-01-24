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
struct drm_device {int dummy; } ;
struct dpll {scalar_t__ p; scalar_t__ dot; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 unsigned long long FUNC2 (scalar_t__) ; 
 unsigned int FUNC3 (unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 

__attribute__((used)) static bool FUNC5(struct drm_device *dev, int target_freq,
			       const struct dpll *calculated_clock,
			       const struct dpll *best_clock,
			       unsigned int best_error_ppm,
			       unsigned int *error_ppm)
{
	/*
	 * For CHV ignore the error and consider only the P value.
	 * Prefer a bigger P value based on HW requirements.
	 */
	if (FUNC0(FUNC4(dev))) {
		*error_ppm = 0;

		return calculated_clock->p > best_clock->p;
	}

	if (FUNC1(!target_freq))
		return false;

	*error_ppm = FUNC3(1000000ULL *
				FUNC2(target_freq - calculated_clock->dot),
			     target_freq);
	/*
	 * Prefer a better P value over a better (smaller) error if the error
	 * is small. Ensure this preference for future configurations too by
	 * setting the error to 0.
	 */
	if (*error_ppm < 100 && calculated_clock->p > best_clock->p) {
		*error_ppm = 0;

		return true;
	}

	return *error_ppm + 10 < best_error_ppm;
}