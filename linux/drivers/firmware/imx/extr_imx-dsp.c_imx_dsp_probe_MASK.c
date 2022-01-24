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
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct mbox_client {int tx_block; int knows_txdone; int /*<<< orphan*/  rx_callback; struct device* dev; } ;
struct imx_dsp_ipc {struct imx_dsp_chan* chans; struct device* dev; } ;
struct imx_dsp_chan {int idx; int /*<<< orphan*/  ch; struct imx_dsp_ipc* ipc; struct mbox_client cl; } ;

/* Variables and functions */
 int DSP_MU_CHAN_NUM ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct imx_dsp_ipc*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 struct imx_dsp_ipc* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*) ; 
 int /*<<< orphan*/  imx_dsp_handle_rx ; 
 char* FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mbox_client*,char*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct imx_dsp_ipc *dsp_ipc;
	struct imx_dsp_chan *dsp_chan;
	struct mbox_client *cl;
	char *chan_name;
	int ret;
	int i, j;

	FUNC6(&pdev->dev, pdev->dev.parent);

	dsp_ipc = FUNC7(dev, sizeof(*dsp_ipc), GFP_KERNEL);
	if (!dsp_ipc)
		return -ENOMEM;

	for (i = 0; i < DSP_MU_CHAN_NUM; i++) {
		if (i < 2)
			chan_name = FUNC9(GFP_KERNEL, "txdb%d", i);
		else
			chan_name = FUNC9(GFP_KERNEL, "rxdb%d", i - 2);

		if (!chan_name)
			return -ENOMEM;

		dsp_chan = &dsp_ipc->chans[i];
		cl = &dsp_chan->cl;
		cl->dev = dev;
		cl->tx_block = false;
		cl->knows_txdone = true;
		cl->rx_callback = imx_dsp_handle_rx;

		dsp_chan->ipc = dsp_ipc;
		dsp_chan->idx = i % 2;
		dsp_chan->ch = FUNC12(cl, chan_name);
		if (FUNC0(dsp_chan->ch)) {
			ret = FUNC1(dsp_chan->ch);
			if (ret != -EPROBE_DEFER)
				FUNC3(dev, "Failed to request mbox chan %s ret %d\n",
					chan_name, ret);
			goto out;
		}

		FUNC2(dev, "request mbox chan %s\n", chan_name);
		/* chan_name is not used anymore by framework */
		FUNC10(chan_name);
	}

	dsp_ipc->dev = dev;

	FUNC5(dev, dsp_ipc);

	FUNC4(dev, "NXP i.MX DSP IPC initialized\n");

	return FUNC8(dev);
out:
	FUNC10(chan_name);
	for (j = 0; j < i; j++) {
		dsp_chan = &dsp_ipc->chans[j];
		FUNC11(dsp_chan->ch);
	}

	return ret;
}