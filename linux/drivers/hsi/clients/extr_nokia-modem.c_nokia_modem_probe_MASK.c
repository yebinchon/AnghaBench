#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nokia_modem_device {int nokia_modem_rst_ind_irq; int /*<<< orphan*/  nokia_modem_rst_ind_tasklet; TYPE_2__* ssi_protocol; TYPE_1__* cmt_speech; struct device* device; } ;
struct hsi_port {int dummy; } ;
struct hsi_client {int /*<<< orphan*/  rx_cfg; int /*<<< orphan*/  tx_cfg; } ;
struct hsi_board_info {char* name; int /*<<< orphan*/ * archdata; int /*<<< orphan*/ * platform_data; int /*<<< orphan*/  rx_cfg; int /*<<< orphan*/  tx_cfg; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct nokia_modem_device*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 struct nokia_modem_device* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int,int /*<<< orphan*/ ,int,char*,struct nokia_modem_device*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  do_nokia_modem_rst_ind_tasklet ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 struct hsi_port* FUNC9 (struct hsi_client*) ; 
 void* FUNC10 (struct hsi_port*,struct hsi_board_info*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int) ; 
 int FUNC13 (struct device_node*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  nokia_modem_rst_ind_isr ; 
 scalar_t__ pm ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 struct hsi_client* FUNC18 (struct device*) ; 

__attribute__((used)) static int FUNC19(struct device *dev)
{
	struct device_node *np;
	struct nokia_modem_device *modem;
	struct hsi_client *cl = FUNC18(dev);
	struct hsi_port *port = FUNC9(cl);
	int irq, pflags, err;
	struct hsi_board_info ssip;
	struct hsi_board_info cmtspeech;

	np = dev->of_node;
	if (!np) {
		FUNC1(dev, "device tree node not found\n");
		return -ENXIO;
	}

	modem = FUNC5(dev, sizeof(*modem), GFP_KERNEL);
	if (!modem)
		return -ENOMEM;

	FUNC3(dev, modem);
	modem->device = dev;

	irq = FUNC13(np, 0);
	if (!irq) {
		FUNC1(dev, "Invalid rst_ind interrupt (%d)\n", irq);
		return -EINVAL;
	}
	modem->nokia_modem_rst_ind_irq = irq;
	pflags = FUNC12(irq);

	FUNC16(&modem->nokia_modem_rst_ind_tasklet,
			do_nokia_modem_rst_ind_tasklet, (unsigned long)modem);
	err = FUNC6(dev, irq, nokia_modem_rst_ind_isr,
				pflags, "modem_rst_ind", modem);
	if (err < 0) {
		FUNC1(dev, "Request rst_ind irq(%d) failed (flags %d)\n",
								irq, pflags);
		return err;
	}
	FUNC8(irq);

	if (pm) {
		err = FUNC14(dev);
		if (err < 0) {
			FUNC1(dev, "Could not probe GPIOs\n");
			goto error1;
		}
	}

	ssip.name = "ssi-protocol";
	ssip.tx_cfg = cl->tx_cfg;
	ssip.rx_cfg = cl->rx_cfg;
	ssip.platform_data = NULL;
	ssip.archdata = NULL;

	modem->ssi_protocol = FUNC10(port, &ssip);
	if (!modem->ssi_protocol) {
		FUNC1(dev, "Could not register ssi-protocol device\n");
		err = -ENOMEM;
		goto error2;
	}

	err = FUNC4(&modem->ssi_protocol->device);
	if (err == 0) {
		FUNC0(dev, "Missing ssi-protocol driver\n");
		err = -EPROBE_DEFER;
		goto error3;
	} else if (err < 0) {
		FUNC1(dev, "Could not load ssi-protocol driver (%d)\n", err);
		goto error3;
	}

	cmtspeech.name = "cmt-speech";
	cmtspeech.tx_cfg = cl->tx_cfg;
	cmtspeech.rx_cfg = cl->rx_cfg;
	cmtspeech.platform_data = NULL;
	cmtspeech.archdata = NULL;

	modem->cmt_speech = FUNC10(port, &cmtspeech);
	if (!modem->cmt_speech) {
		FUNC1(dev, "Could not register cmt-speech device\n");
		err = -ENOMEM;
		goto error3;
	}

	err = FUNC4(&modem->cmt_speech->device);
	if (err == 0) {
		FUNC0(dev, "Missing cmt-speech driver\n");
		err = -EPROBE_DEFER;
		goto error4;
	} else if (err < 0) {
		FUNC1(dev, "Could not load cmt-speech driver (%d)\n", err);
		goto error4;
	}

	FUNC2(dev, "Registered Nokia HSI modem\n");

	return 0;

error4:
	FUNC11(&modem->cmt_speech->device, NULL);
error3:
	FUNC11(&modem->ssi_protocol->device, NULL);
error2:
	FUNC15(dev);
error1:
	FUNC7(modem->nokia_modem_rst_ind_irq);
	FUNC17(&modem->nokia_modem_rst_ind_tasklet);

	return err;
}