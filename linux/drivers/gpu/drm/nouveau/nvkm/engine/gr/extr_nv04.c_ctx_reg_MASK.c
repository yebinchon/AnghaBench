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
struct nv04_gr_chan {scalar_t__* nv04; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 scalar_t__* nv04_gr_ctx_regs ; 

__attribute__((used)) static u32 *FUNC1(struct nv04_gr_chan *chan, u32 reg)
{
	int i;

	for (i = 0; i < FUNC0(nv04_gr_ctx_regs); i++) {
		if (nv04_gr_ctx_regs[i] == reg)
			return &chan->nv04[i];
	}

	return NULL;
}