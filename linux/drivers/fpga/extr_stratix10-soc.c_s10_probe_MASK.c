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
struct TYPE_2__ {struct s10_priv* priv; int /*<<< orphan*/  receive_cb; struct device* dev; } ;
struct s10_priv {int /*<<< orphan*/  chan; int /*<<< orphan*/  status_return_completion; TYPE_1__ client; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct fpga_manager {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVC_CLIENT_FPGA ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 struct s10_priv* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct fpga_manager* FUNC4 (struct device*,char*,int /*<<< orphan*/ *,struct s10_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct fpga_manager*) ; 
 int FUNC6 (struct fpga_manager*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct fpga_manager*) ; 
 int /*<<< orphan*/  s10_ops ; 
 int /*<<< orphan*/  s10_receive_callback ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct s10_priv *priv;
	struct fpga_manager *mgr;
	int ret;

	priv = FUNC3(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->client.dev = dev;
	priv->client.receive_cb = s10_receive_callback;
	priv->client.priv = priv;

	priv->chan = FUNC10(&priv->client,
							  SVC_CLIENT_FPGA);
	if (FUNC0(priv->chan)) {
		FUNC2(dev, "couldn't get service channel (%s)\n",
			SVC_CLIENT_FPGA);
		return FUNC1(priv->chan);
	}

	FUNC7(&priv->status_return_completion);

	mgr = FUNC4(dev, "Stratix10 SOC FPGA Manager",
			      &s10_ops, priv);
	if (!mgr) {
		FUNC2(dev, "unable to create FPGA manager\n");
		ret = -ENOMEM;
		goto probe_err;
	}

	ret = FUNC6(mgr);
	if (ret) {
		FUNC2(dev, "unable to register FPGA manager\n");
		FUNC5(mgr);
		goto probe_err;
	}

	FUNC8(pdev, mgr);
	return ret;

probe_err:
	FUNC9(priv->chan);
	return ret;
}