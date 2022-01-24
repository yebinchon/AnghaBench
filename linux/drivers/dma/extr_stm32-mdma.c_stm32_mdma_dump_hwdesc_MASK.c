#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stm32_mdma_desc_node {TYPE_1__* hwdesc; int /*<<< orphan*/  hwdesc_phys; } ;
struct stm32_mdma_chan {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * cmdr; int /*<<< orphan*/ * cmar; int /*<<< orphan*/ * ctbr; int /*<<< orphan*/ * clar; int /*<<< orphan*/ * cbrur; int /*<<< orphan*/ * cdar; int /*<<< orphan*/ * csar; int /*<<< orphan*/ * cbndtr; int /*<<< orphan*/ * ctcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stm32_mdma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct stm32_mdma_chan *chan,
				   struct stm32_mdma_desc_node *node)
{
	FUNC1(FUNC0(chan), "hwdesc:  %pad\n", &node->hwdesc_phys);
	FUNC1(FUNC0(chan), "CTCR:    0x%08x\n", node->hwdesc->ctcr);
	FUNC1(FUNC0(chan), "CBNDTR:  0x%08x\n", node->hwdesc->cbndtr);
	FUNC1(FUNC0(chan), "CSAR:    0x%08x\n", node->hwdesc->csar);
	FUNC1(FUNC0(chan), "CDAR:    0x%08x\n", node->hwdesc->cdar);
	FUNC1(FUNC0(chan), "CBRUR:   0x%08x\n", node->hwdesc->cbrur);
	FUNC1(FUNC0(chan), "CLAR:    0x%08x\n", node->hwdesc->clar);
	FUNC1(FUNC0(chan), "CTBR:    0x%08x\n", node->hwdesc->ctbr);
	FUNC1(FUNC0(chan), "CMAR:    0x%08x\n", node->hwdesc->cmar);
	FUNC1(FUNC0(chan), "CMDR:    0x%08x\n\n", node->hwdesc->cmdr);
}