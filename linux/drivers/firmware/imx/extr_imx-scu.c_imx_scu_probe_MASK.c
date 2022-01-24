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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mbox_client {int tx_block; int knows_txdone; int /*<<< orphan*/  rx_callback; struct device* dev; } ;
struct imx_sc_ipc {int /*<<< orphan*/  done; int /*<<< orphan*/  lock; struct device* dev; struct imx_sc_chan* chans; } ;
struct imx_sc_chan {int idx; int /*<<< orphan*/  ch; struct imx_sc_ipc* sc_ipc; struct mbox_client cl; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SCU_MU_CHAN_NUM ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 struct imx_sc_ipc* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*) ; 
 struct imx_sc_ipc* imx_sc_ipc_handle ; 
 int FUNC8 (struct device*) ; 
 int /*<<< orphan*/  imx_scu_rx_callback ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (struct mbox_client*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct imx_sc_ipc *sc_ipc;
	struct imx_sc_chan *sc_chan;
	struct mbox_client *cl;
	char *chan_name;
	int ret;
	int i;

	sc_ipc = FUNC6(dev, sizeof(*sc_ipc), GFP_KERNEL);
	if (!sc_ipc)
		return -ENOMEM;

	for (i = 0; i < SCU_MU_CHAN_NUM; i++) {
		if (i < 4)
			chan_name = FUNC10(GFP_KERNEL, "tx%d", i);
		else
			chan_name = FUNC10(GFP_KERNEL, "rx%d", i - 4);

		if (!chan_name)
			return -ENOMEM;

		sc_chan = &sc_ipc->chans[i];
		cl = &sc_chan->cl;
		cl->dev = dev;
		cl->tx_block = false;
		cl->knows_txdone = true;
		cl->rx_callback = imx_scu_rx_callback;

		sc_chan->sc_ipc = sc_ipc;
		sc_chan->idx = i % 4;
		sc_chan->ch = FUNC12(cl, chan_name);
		if (FUNC0(sc_chan->ch)) {
			ret = FUNC1(sc_chan->ch);
			if (ret != -EPROBE_DEFER)
				FUNC3(dev, "Failed to request mbox chan %s ret %d\n",
					chan_name, ret);
			return ret;
		}

		FUNC2(dev, "request mbox chan %s\n", chan_name);
		/* chan_name is not used anymore by framework */
		FUNC11(chan_name);
	}

	sc_ipc->dev = dev;
	FUNC13(&sc_ipc->lock);
	FUNC9(&sc_ipc->done);

	imx_sc_ipc_handle = sc_ipc;

	ret = FUNC8(dev);
	if (ret)
		FUNC5(dev,
			"failed to enable general irq channel: %d\n", ret);

	FUNC4(dev, "NXP i.MX SCU Initialized\n");

	return FUNC7(dev);
}