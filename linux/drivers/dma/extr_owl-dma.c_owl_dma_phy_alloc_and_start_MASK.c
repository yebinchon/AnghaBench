#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct TYPE_5__ {TYPE_1__ chan; } ;
struct owl_dma_vchan {struct owl_dma_pchan* pchan; TYPE_2__ vc; } ;
struct owl_dma_pchan {int /*<<< orphan*/  id; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct owl_dma {TYPE_3__ dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct owl_dma_pchan* FUNC1 (struct owl_dma*,struct owl_dma_vchan*) ; 
 int /*<<< orphan*/  FUNC2 (struct owl_dma_vchan*) ; 
 struct owl_dma* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct owl_dma_vchan *vchan)
{
	struct owl_dma *od = FUNC3(vchan->vc.chan.device);
	struct owl_dma_pchan *pchan;

	pchan = FUNC1(od, vchan);
	if (!pchan)
		return;

	FUNC0(od->dma.dev, "allocated pchan %d\n", pchan->id);

	vchan->pchan = pchan;
	FUNC2(vchan);
}