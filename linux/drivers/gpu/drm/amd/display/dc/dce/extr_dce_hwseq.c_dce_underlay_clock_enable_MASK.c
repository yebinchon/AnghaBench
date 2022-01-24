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
struct dce_hwseq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCFEV_CLOCK_CONTROL ; 
 int /*<<< orphan*/  DCFEV_CLOCK_ENABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct dce_hwseq *hws)
{
	/* todo: why do we need this at boot? is dce_enable_fe_clock enough? */
	if (FUNC0(DCFEV_CLOCK_CONTROL))
		FUNC1(DCFEV_CLOCK_CONTROL,
				DCFEV_CLOCK_ENABLE, 1);
}