#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_14__ ;
typedef  struct TYPE_17__   TYPE_13__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
struct TYPE_25__ {unsigned int count; } ;
struct tegra_bpmp {TYPE_10__* tx_channel; TYPE_10__* rx_channel; TYPE_10__* threaded_channels; TYPE_7__ threaded; TYPE_14__* dev; TYPE_5__* soc; struct tegra186_bpmp* priv; } ;
struct TYPE_27__ {void* virt; void* pool; int /*<<< orphan*/  phys; } ;
struct TYPE_26__ {void* virt; void* pool; int /*<<< orphan*/  phys; } ;
struct TYPE_17__ {int tx_block; int knows_txdone; int /*<<< orphan*/  rx_callback; TYPE_14__* dev; } ;
struct TYPE_24__ {int /*<<< orphan*/  channel; TYPE_13__ client; } ;
struct tegra186_bpmp {TYPE_9__ tx; TYPE_8__ rx; TYPE_6__ mbox; struct tegra_bpmp* parent; } ;
struct TYPE_21__ {unsigned int offset; } ;
struct TYPE_20__ {unsigned int offset; } ;
struct TYPE_19__ {unsigned int offset; } ;
struct TYPE_22__ {TYPE_3__ thread; TYPE_2__ cpu_rx; TYPE_1__ cpu_tx; } ;
struct TYPE_23__ {TYPE_4__ channels; } ;
struct TYPE_18__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_16__ {int /*<<< orphan*/  bpmp; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_14__*,char*,...) ; 
 struct tegra186_bpmp* FUNC3 (TYPE_14__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,unsigned long,int) ; 
 int /*<<< orphan*/  mbox_handle_rx ; 
 int /*<<< orphan*/  FUNC6 (TYPE_13__*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_10__*) ; 
 int FUNC9 (TYPE_10__*,struct tegra_bpmp*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_10__*) ; 

__attribute__((used)) static int FUNC11(struct tegra_bpmp *bpmp)
{
	struct tegra186_bpmp *priv;
	unsigned int i;
	int err;

	priv = FUNC3(bpmp->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	bpmp->priv = priv;
	priv->parent = bpmp;

	priv->tx.pool = FUNC7(bpmp->dev->of_node, "shmem", 0);
	if (!priv->tx.pool) {
		FUNC2(bpmp->dev, "TX shmem pool not found\n");
		return -ENOMEM;
	}

	priv->tx.virt = FUNC4(priv->tx.pool, 4096, &priv->tx.phys);
	if (!priv->tx.virt) {
		FUNC2(bpmp->dev, "failed to allocate from TX pool\n");
		return -ENOMEM;
	}

	priv->rx.pool = FUNC7(bpmp->dev->of_node, "shmem", 1);
	if (!priv->rx.pool) {
		FUNC2(bpmp->dev, "RX shmem pool not found\n");
		err = -ENOMEM;
		goto free_tx;
	}

	priv->rx.virt = FUNC4(priv->rx.pool, 4096, &priv->rx.phys);
	if (!priv->rx.virt) {
		FUNC2(bpmp->dev, "failed to allocate from RX pool\n");
		err = -ENOMEM;
		goto free_tx;
	}

	err = FUNC9(bpmp->tx_channel, bpmp,
					 bpmp->soc->channels.cpu_tx.offset);
	if (err < 0)
		goto free_rx;

	err = FUNC9(bpmp->rx_channel, bpmp,
					 bpmp->soc->channels.cpu_rx.offset);
	if (err < 0)
		goto cleanup_tx_channel;

	for (i = 0; i < bpmp->threaded.count; i++) {
		unsigned int index = bpmp->soc->channels.thread.offset + i;

		err = FUNC9(&bpmp->threaded_channels[i],
						 bpmp, index);
		if (err < 0)
			goto cleanup_channels;
	}

	/* mbox registration */
	priv->mbox.client.dev = bpmp->dev;
	priv->mbox.client.rx_callback = mbox_handle_rx;
	priv->mbox.client.tx_block = false;
	priv->mbox.client.knows_txdone = false;

	priv->mbox.channel = FUNC6(&priv->mbox.client, 0);
	if (FUNC0(priv->mbox.channel)) {
		err = FUNC1(priv->mbox.channel);
		FUNC2(bpmp->dev, "failed to get HSP mailbox: %d\n", err);
		goto cleanup_channels;
	}

	FUNC10(bpmp->tx_channel);
	FUNC10(bpmp->rx_channel);

	for (i = 0; i < bpmp->threaded.count; i++)
		FUNC10(&bpmp->threaded_channels[i]);

	return 0;

cleanup_channels:
	for (i = 0; i < bpmp->threaded.count; i++) {
		if (!bpmp->threaded_channels[i].bpmp)
			continue;

		FUNC8(&bpmp->threaded_channels[i]);
	}

	FUNC8(bpmp->rx_channel);
cleanup_tx_channel:
	FUNC8(bpmp->tx_channel);
free_rx:
	FUNC5(priv->rx.pool, (unsigned long)priv->rx.virt, 4096);
free_tx:
	FUNC5(priv->tx.pool, (unsigned long)priv->tx.virt, 4096);

	return err;
}