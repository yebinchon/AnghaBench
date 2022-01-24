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
typedef  scalar_t__ u32 ;
struct sdma_engine {scalar_t__ regs; } ;
struct sdma_channel {int channel; struct sdma_engine* sdma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned long*) ; 
 scalar_t__ FUNC1 (struct sdma_engine*,unsigned int) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct sdma_channel *sdmac, unsigned int event)
{
	struct sdma_engine *sdma = sdmac->sdma;
	int channel = sdmac->channel;
	unsigned long val;
	u32 chnenbl = FUNC1(sdma, event);

	val = FUNC2(sdma->regs + chnenbl);
	FUNC0(channel, &val);
	FUNC3(val, sdma->regs + chnenbl);
}