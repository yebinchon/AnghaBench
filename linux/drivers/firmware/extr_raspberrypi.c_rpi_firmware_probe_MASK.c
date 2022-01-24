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
struct TYPE_2__ {int tx_block; int /*<<< orphan*/  rx_callback; struct device* dev; } ;
struct rpi_firmware {int /*<<< orphan*/  c; int /*<<< orphan*/  chan; TYPE_1__ cl; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct rpi_firmware* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct rpi_firmware*) ; 
 int /*<<< orphan*/  response_callback ; 
 int /*<<< orphan*/  FUNC7 (struct rpi_firmware*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,struct rpi_firmware*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct rpi_firmware *fw;

	fw = FUNC3(dev, sizeof(*fw), GFP_KERNEL);
	if (!fw)
		return -ENOMEM;

	fw->cl.dev = dev;
	fw->cl.rx_callback = response_callback;
	fw->cl.tx_block = true;

	fw->chan = FUNC5(&fw->cl, 0);
	if (FUNC0(fw->chan)) {
		int ret = FUNC1(fw->chan);
		if (ret != -EPROBE_DEFER)
			FUNC2(dev, "Failed to get mbox channel: %d\n", ret);
		return ret;
	}

	FUNC4(&fw->c);

	FUNC6(pdev, fw);

	FUNC7(fw);
	FUNC9(dev, fw);
	FUNC8(dev);

	return 0;
}