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
struct owl_dma_pchan {int id; } ;
struct owl_dma {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OWL_DMA_IDLE_STAT ; 
 unsigned int FUNC0 (struct owl_dma*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct owl_dma *od, struct owl_dma_pchan *pchan)
{
	unsigned int val;

	val = FUNC0(od, OWL_DMA_IDLE_STAT);

	return !(val & (1 << pchan->id));
}