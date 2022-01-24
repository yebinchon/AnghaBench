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
typedef  int /*<<< orphan*/  u32 ;
struct psb_intel_i2c_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct psb_intel_i2c_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct psb_intel_i2c_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RGIO ; 
 int /*<<< orphan*/  RGLVL ; 

__attribute__((used)) static void FUNC2(void *data, int state_high)
{
	struct psb_intel_i2c_chan *chan = data;
	u32 val;

	if (state_high) {
		val = FUNC0(chan, RGIO);
		val |= GPIO_DATA;
		FUNC1(chan, RGIO, val);
	} else {
		val = FUNC0(chan, RGIO);
		val &= ~GPIO_DATA;
		FUNC1(chan, RGIO, val);
		val = FUNC0(chan, RGLVL);
		val &= ~GPIO_DATA;
		FUNC1(chan, RGLVL, val);
	}
}