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
struct mxs_lradc_ts {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ LRADC_CTRL4 ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 scalar_t__ STMP_OFFSET_REG_CLR ; 
 scalar_t__ STMP_OFFSET_REG_SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mxs_lradc_ts *ts, unsigned int vch,
				     unsigned int ch)
{
	FUNC2(FUNC1(vch),
	       ts->base + LRADC_CTRL4 + STMP_OFFSET_REG_CLR);
	FUNC2(FUNC0(vch, ch),
	       ts->base + LRADC_CTRL4 + STMP_OFFSET_REG_SET);
}