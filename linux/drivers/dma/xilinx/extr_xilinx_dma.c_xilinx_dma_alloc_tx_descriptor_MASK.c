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
struct xilinx_dma_tx_descriptor {int /*<<< orphan*/  segments; } ;
struct xilinx_dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct xilinx_dma_tx_descriptor* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct xilinx_dma_tx_descriptor *
FUNC2(struct xilinx_dma_chan *chan)
{
	struct xilinx_dma_tx_descriptor *desc;

	desc = FUNC1(sizeof(*desc), GFP_KERNEL);
	if (!desc)
		return NULL;

	FUNC0(&desc->segments);

	return desc;
}