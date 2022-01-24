#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct dw_hdmi_cec_data {int /*<<< orphan*/  hdmi; int /*<<< orphan*/  ops; int /*<<< orphan*/  irq; } ;
struct dw_hdmi_cec {int /*<<< orphan*/  notify; TYPE_2__* adap; int /*<<< orphan*/  irq; int /*<<< orphan*/  hdmi; int /*<<< orphan*/  ops; } ;
struct TYPE_14__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int CEC_CAP_CONNECTOR_INFO ; 
 int CEC_CAP_DEFAULTS ; 
 int /*<<< orphan*/  CEC_MAX_LOG_ADDRS ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HDMI_CEC_MASK ; 
 int /*<<< orphan*/  HDMI_CEC_POLARITY ; 
 int /*<<< orphan*/  HDMI_CEC_TX_CNT ; 
 int /*<<< orphan*/  HDMI_IH_MUTE_CEC_STAT0 ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,struct dw_hdmi_cec*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct dw_hdmi_cec_data* FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,struct dw_hdmi_cec*) ; 
 struct dw_hdmi_cec* FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,struct dw_hdmi_cec*) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  dw_hdmi_cec_del ; 
 int /*<<< orphan*/  dw_hdmi_cec_hardirq ; 
 int /*<<< orphan*/  dw_hdmi_cec_ops ; 
 int /*<<< orphan*/  dw_hdmi_cec_thread ; 
 int /*<<< orphan*/  FUNC12 (struct dw_hdmi_cec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct dw_hdmi_cec*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct dw_hdmi_cec_data *data = FUNC7(&pdev->dev);
	struct dw_hdmi_cec *cec;
	int ret;

	if (!data)
		return -ENXIO;

	/*
	 * Our device is just a convenience - we want to link to the real
	 * hardware device here, so that userspace can see the association
	 * between the HDMI hardware and its associated CEC chardev.
	 */
	cec = FUNC9(&pdev->dev, sizeof(*cec), GFP_KERNEL);
	if (!cec)
		return -ENOMEM;

	cec->irq = data->irq;
	cec->ops = data->ops;
	cec->hdmi = data->hdmi;

	FUNC13(pdev, cec);

	FUNC12(cec, 0, HDMI_CEC_TX_CNT);
	FUNC12(cec, ~0, HDMI_CEC_MASK);
	FUNC12(cec, ~0, HDMI_IH_MUTE_CEC_STAT0);
	FUNC12(cec, 0, HDMI_CEC_POLARITY);

	cec->adap = FUNC2(&dw_hdmi_cec_ops, cec, "dw_hdmi",
					 CEC_CAP_DEFAULTS |
					 CEC_CAP_CONNECTOR_INFO,
					 CEC_MAX_LOG_ADDRS);
	if (FUNC0(cec->adap))
		return FUNC1(cec->adap);

	/* override the module pointer */
	cec->adap->owner = THIS_MODULE;

	ret = FUNC8(&pdev->dev, dw_hdmi_cec_del, cec);
	if (ret) {
		FUNC3(cec->adap);
		return ret;
	}

	ret = FUNC11(&pdev->dev, cec->irq,
					dw_hdmi_cec_hardirq,
					dw_hdmi_cec_thread, IRQF_SHARED,
					"dw-hdmi-cec", cec->adap);
	if (ret < 0)
		return ret;

	cec->notify = FUNC4(pdev->dev.parent,
						     NULL, cec->adap);
	if (!cec->notify)
		return -ENOMEM;

	ret = FUNC6(cec->adap, pdev->dev.parent);
	if (ret < 0) {
		FUNC5(cec->notify);
		return ret;
	}

	/*
	 * CEC documentation says we must not call cec_delete_adapter
	 * after a successful call to cec_register_adapter().
	 */
	FUNC10(&pdev->dev, dw_hdmi_cec_del, cec);

	return 0;
}