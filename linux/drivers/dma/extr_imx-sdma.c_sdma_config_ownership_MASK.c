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
struct sdma_engine {scalar_t__ regs; } ;
struct sdma_channel {int channel; struct sdma_engine* sdma; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SDMA_H_DSPOVR ; 
 scalar_t__ SDMA_H_EVTOVR ; 
 scalar_t__ SDMA_H_HOSTOVR ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long*) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct sdma_channel *sdmac,
		bool event_override, bool mcu_override, bool dsp_override)
{
	struct sdma_engine *sdma = sdmac->sdma;
	int channel = sdmac->channel;
	unsigned long evt, mcu, dsp;

	if (event_override && mcu_override && dsp_override)
		return -EINVAL;

	evt = FUNC2(sdma->regs + SDMA_H_EVTOVR);
	mcu = FUNC2(sdma->regs + SDMA_H_HOSTOVR);
	dsp = FUNC2(sdma->regs + SDMA_H_DSPOVR);

	if (dsp_override)
		FUNC0(channel, &dsp);
	else
		FUNC1(channel, &dsp);

	if (event_override)
		FUNC0(channel, &evt);
	else
		FUNC1(channel, &evt);

	if (mcu_override)
		FUNC0(channel, &mcu);
	else
		FUNC1(channel, &mcu);

	FUNC3(evt, sdma->regs + SDMA_H_EVTOVR);
	FUNC3(mcu, sdma->regs + SDMA_H_HOSTOVR);
	FUNC3(dsp, sdma->regs + SDMA_H_DSPOVR);

	return 0;
}