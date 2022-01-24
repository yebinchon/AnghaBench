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
typedef  int /*<<< orphan*/  u32 ;
struct spear_adc_state {TYPE_2__* adc_base_spear3xx; TYPE_1__* adc_base_spear6xx; int /*<<< orphan*/  np; } ;
struct TYPE_4__ {int /*<<< orphan*/  scan_rate; } ;
struct TYPE_3__ {int /*<<< orphan*/  scan_rate_hi; int /*<<< orphan*/  scan_rate_lo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(struct spear_adc_state *st, u32 rate)
{
	if (FUNC3(st->np, "st,spear600-adc")) {
		FUNC2(FUNC1(rate),
			     &st->adc_base_spear6xx->scan_rate_lo);
		FUNC2(FUNC0(rate),
			     &st->adc_base_spear6xx->scan_rate_hi);
	} else {
		FUNC2(rate, &st->adc_base_spear3xx->scan_rate);
	}
}