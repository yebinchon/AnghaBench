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
typedef  int /*<<< orphan*/  u32 ;
struct sdi_device {int /*<<< orphan*/  vdds_sdi_reg; struct platform_device* pdev; struct dss_device* dss; int /*<<< orphan*/  datapairs; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct dss_device {int dummy; } ;
struct device_node {struct sdi_device* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdi_device*) ; 
 struct sdi_device* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC6 (struct device_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 int FUNC8 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct sdi_device*) ; 

int FUNC10(struct dss_device *dss, struct platform_device *pdev,
		  struct device_node *port)
{
	struct sdi_device *sdi;
	struct device_node *ep;
	u32 datapairs;
	int r;

	sdi = FUNC5(sizeof(*sdi), GFP_KERNEL);
	if (!sdi)
		return -ENOMEM;

	ep = FUNC6(port, NULL);
	if (!ep) {
		r = 0;
		goto err_free;
	}

	r = FUNC8(ep, "datapairs", &datapairs);
	FUNC7(ep);
	if (r) {
		FUNC0("failed to parse datapairs\n");
		goto err_free;
	}

	sdi->datapairs = datapairs;
	sdi->dss = dss;

	sdi->pdev = pdev;
	port->data = sdi;

	sdi->vdds_sdi_reg = FUNC3(&pdev->dev, "vdds_sdi");
	if (FUNC1(sdi->vdds_sdi_reg)) {
		r = FUNC2(sdi->vdds_sdi_reg);
		if (r != -EPROBE_DEFER)
			FUNC0("can't get VDDS_SDI regulator\n");
		goto err_free;
	}

	r = FUNC9(sdi);
	if (r)
		goto err_free;

	return 0;

err_free:
	FUNC4(sdi);

	return r;
}