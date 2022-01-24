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
struct idmac_channel {scalar_t__ status; int eof_irq; char* eof_name; } ;
struct idmac {int dummy; } ;
struct dma_chan {int client_count; int chan_id; TYPE_1__* dev; int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ IDMAC_IC_7 ; 
 scalar_t__ IPU_CHANNEL_FREE ; 
 scalar_t__ IPU_CHANNEL_INITIALIZED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_chan*) ; 
 int ic_eof ; 
 int /*<<< orphan*/  ic_eof_irq ; 
 int ic_sof ; 
 int /*<<< orphan*/  ic_sof_irq ; 
 int /*<<< orphan*/  idmac_interrupt ; 
 int /*<<< orphan*/  FUNC5 (struct idmac*,struct idmac_channel*,int) ; 
 int FUNC6 (struct idmac*,struct idmac_channel*) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct idmac*,struct idmac_channel*) ; 
 int FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct idmac_channel*) ; 
 struct idmac* FUNC11 (int /*<<< orphan*/ ) ; 
 struct idmac_channel* FUNC12 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC13(struct dma_chan *chan)
{
	struct idmac_channel *ichan = FUNC12(chan);
	struct idmac *idmac = FUNC11(chan->device);
	int ret;

	/* dmaengine.c now guarantees to only offer free channels */
	FUNC0(chan->client_count > 1);
	FUNC1(ichan->status != IPU_CHANNEL_FREE);

	FUNC4(chan);

	ret = FUNC7(chan->chan_id);
	if (ret < 0)
		goto eimap;

	ichan->eof_irq = ret;

	/*
	 * Important to first disable the channel, because maybe someone
	 * used it before us, e.g., the bootloader
	 */
	FUNC5(idmac, ichan, true);

	ret = FUNC6(idmac, ichan);
	if (ret < 0)
		goto eichan;

	ret = FUNC10(ichan->eof_irq, idmac_interrupt, 0,
			  ichan->eof_name, ichan);
	if (ret < 0)
		goto erirq;

#ifdef DEBUG
	if (chan->chan_id == IDMAC_IC_7) {
		ic_sof = ipu_irq_map(69);
		if (ic_sof > 0) {
			ret = request_irq(ic_sof, ic_sof_irq, 0, "IC SOF", ichan);
			if (ret)
				dev_err(&chan->dev->device, "request irq failed for IC SOF");
		}
		ic_eof = ipu_irq_map(70);
		if (ic_eof > 0) {
			ret = request_irq(ic_eof, ic_eof_irq, 0, "IC EOF", ichan);
			if (ret)
				dev_err(&chan->dev->device, "request irq failed for IC EOF");
		}
	}
#endif

	ichan->status = IPU_CHANNEL_INITIALIZED;

	FUNC2(&chan->dev->device, "Found channel 0x%x, irq %d\n",
		chan->chan_id, ichan->eof_irq);

	return ret;

erirq:
	FUNC9(idmac, ichan);
eichan:
	FUNC8(chan->chan_id);
eimap:
	return ret;
}