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
struct of_phandle_args {int args_count; int /*<<< orphan*/ * args; } ;
struct of_dma {struct at_xdmac* of_dma_data; } ;
struct dma_chan {int dummy; } ;
struct device {int dummy; } ;
struct at_xdmac_chan {int /*<<< orphan*/  perid; int /*<<< orphan*/  perif; int /*<<< orphan*/  memif; } ;
struct TYPE_2__ {struct device* dev; } ;
struct at_xdmac {TYPE_1__ dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct dma_chan* FUNC5 (TYPE_1__*) ; 
 struct at_xdmac_chan* FUNC6 (struct dma_chan*) ; 

__attribute__((used)) static struct dma_chan *FUNC7(struct of_phandle_args *dma_spec,
				       struct of_dma *of_dma)
{
	struct at_xdmac		*atxdmac = of_dma->of_dma_data;
	struct at_xdmac_chan	*atchan;
	struct dma_chan		*chan;
	struct device		*dev = atxdmac->dma.dev;

	if (dma_spec->args_count != 1) {
		FUNC4(dev, "dma phandler args: bad number of args\n");
		return NULL;
	}

	chan = FUNC5(&atxdmac->dma);
	if (!chan) {
		FUNC4(dev, "can't get a dma channel\n");
		return NULL;
	}

	atchan = FUNC6(chan);
	atchan->memif = FUNC0(dma_spec->args[0]);
	atchan->perif = FUNC2(dma_spec->args[0]);
	atchan->perid = FUNC1(dma_spec->args[0]);
	FUNC3(dev, "chan dt cfg: memif=%u perif=%u perid=%u\n",
		 atchan->memif, atchan->perif, atchan->perid);

	return chan;
}