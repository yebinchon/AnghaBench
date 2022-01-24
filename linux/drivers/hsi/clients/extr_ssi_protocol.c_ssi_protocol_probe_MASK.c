#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ssi_protocol {int channel_id_cmd; int channel_id_data; TYPE_1__* netdev; int /*<<< orphan*/  link; int /*<<< orphan*/  work; struct hsi_client* cl; int /*<<< orphan*/  tx_usecnt; int /*<<< orphan*/  cmdqueue; int /*<<< orphan*/  txqueue; int /*<<< orphan*/  keep_alive; int /*<<< orphan*/  tx_wd; int /*<<< orphan*/  rx_wd; int /*<<< orphan*/  lock; } ;
struct hsi_client {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  min_mtu; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NET_NAME_UNKNOWN ; 
 int /*<<< orphan*/  PHONET_MIN_MTU ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct device*) ; 
 int /*<<< orphan*/  SSIP_MAX_MTU ; 
 int /*<<< orphan*/  TIMER_DEFERRABLE ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct hsi_client*,struct ssi_protocol*) ; 
 void* FUNC9 (struct hsi_client*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct ssi_protocol*) ; 
 struct ssi_protocol* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (struct ssi_protocol*) ; 
 int /*<<< orphan*/  FUNC17 (struct ssi_protocol*) ; 
 int /*<<< orphan*/  ssip_keep_alive ; 
 int /*<<< orphan*/  ssip_list ; 
 int /*<<< orphan*/  ssip_pn_setup ; 
 int /*<<< orphan*/  ssip_rx_wd ; 
 int /*<<< orphan*/  ssip_tx_wd ; 
 int /*<<< orphan*/  ssip_xmit_work ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hsi_client* FUNC19 (struct device*) ; 

__attribute__((used)) static int FUNC20(struct device *dev)
{
	static const char ifname[] = "phonet%d";
	struct hsi_client *cl = FUNC19(dev);
	struct ssi_protocol *ssi;
	int err;

	ssi = FUNC11(sizeof(*ssi), GFP_KERNEL);
	if (!ssi)
		return -ENOMEM;

	FUNC15(&ssi->lock);
	FUNC18(&ssi->rx_wd, ssip_rx_wd, TIMER_DEFERRABLE);
	FUNC18(&ssi->tx_wd, ssip_tx_wd, TIMER_DEFERRABLE);
	FUNC18(&ssi->keep_alive, ssip_keep_alive, 0);
	FUNC0(&ssi->txqueue);
	FUNC0(&ssi->cmdqueue);
	FUNC4(&ssi->tx_usecnt, 0);
	FUNC8(cl, ssi);
	ssi->cl = cl;
	FUNC1(&ssi->work, ssip_xmit_work);

	ssi->channel_id_cmd = FUNC9(cl, "mcsaab-control");
	if (ssi->channel_id_cmd < 0) {
		err = ssi->channel_id_cmd;
		FUNC6(dev, "Could not get cmd channel (%d)\n", err);
		goto out;
	}

	ssi->channel_id_data = FUNC9(cl, "mcsaab-data");
	if (ssi->channel_id_data < 0) {
		err = ssi->channel_id_data;
		FUNC6(dev, "Could not get data channel (%d)\n", err);
		goto out;
	}

	err = FUNC16(ssi);
	if (err < 0) {
		FUNC6(dev, "No memory for commands\n");
		goto out;
	}

	ssi->netdev = FUNC3(0, ifname, NET_NAME_UNKNOWN, ssip_pn_setup);
	if (!ssi->netdev) {
		FUNC6(dev, "No memory for netdev\n");
		err = -ENOMEM;
		goto out1;
	}

	/* MTU range: 6 - 65535 */
	ssi->netdev->min_mtu = PHONET_MIN_MTU;
	ssi->netdev->max_mtu = SSIP_MAX_MTU;

	FUNC2(ssi->netdev, dev);
	FUNC13(ssi->netdev);
	err = FUNC14(ssi->netdev);
	if (err < 0) {
		FUNC6(dev, "Register netdev failed (%d)\n", err);
		goto out2;
	}

	FUNC12(&ssi->link, &ssip_list);

	FUNC5(dev, "channel configuration: cmd=%d, data=%d\n",
		ssi->channel_id_cmd, ssi->channel_id_data);

	return 0;
out2:
	FUNC7(ssi->netdev);
out1:
	FUNC17(ssi);
out:
	FUNC10(ssi);

	return err;
}