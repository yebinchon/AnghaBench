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
struct cppi41_dd {unsigned int n_chans; scalar_t__ sched_mem; } ;

/* Variables and functions */
 scalar_t__ DMA_SCHED_CTRL ; 
 int DMA_SCHED_CTRL_EN ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int SCHED_ENTRY1_IS_RX ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 int SCHED_ENTRY3_IS_RX ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct cppi41_dd *cdd)
{
	unsigned ch;
	unsigned word;
	u32 reg;

	word = 0;
	FUNC5(0, cdd->sched_mem + DMA_SCHED_CTRL);
	for (ch = 0; ch < cdd->n_chans; ch += 2) {

		reg = FUNC1(ch);
		reg |= FUNC2(ch) | SCHED_ENTRY1_IS_RX;

		reg |= FUNC3(ch + 1);
		reg |= FUNC4(ch + 1) | SCHED_ENTRY3_IS_RX;
		FUNC5(reg, cdd->sched_mem + FUNC0(word));
		word++;
	}
	reg = cdd->n_chans * 2 - 1;
	reg |= DMA_SCHED_CTRL_EN;
	FUNC5(reg, cdd->sched_mem + DMA_SCHED_CTRL);
}