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
typedef  int u32 ;
struct sh_dmae_chan {int /*<<< orphan*/  xmit_shift; } ;

/* Variables and functions */
 int DM_INC ; 
 int /*<<< orphan*/  LOG2_DEFAULT_XFER_SIZE ; 
 int RS_AUTO ; 
 int SM_INC ; 
 int /*<<< orphan*/  FUNC0 (struct sh_dmae_chan*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_dmae_chan*,int) ; 
 int FUNC2 (struct sh_dmae_chan*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct sh_dmae_chan *sh_chan)
{
	/*
	 * Default configuration for dual address memory-memory transfer.
	 */
	u32 chcr = DM_INC | SM_INC | RS_AUTO | FUNC2(sh_chan,
						   LOG2_DEFAULT_XFER_SIZE);
	sh_chan->xmit_shift = FUNC0(sh_chan, chcr);
	FUNC1(sh_chan, chcr);
}