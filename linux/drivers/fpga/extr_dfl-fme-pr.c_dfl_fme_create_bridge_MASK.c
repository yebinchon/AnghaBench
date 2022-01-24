#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct dfl_fme_bridge {TYPE_3__* br; } ;
struct dfl_fme_br_pdata {int port_id; int /*<<< orphan*/  cdev; } ;
struct dfl_feature_platform_data {int /*<<< orphan*/  dfl_cdev; TYPE_1__* dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  br_pdata ;
struct TYPE_8__ {struct device* parent; } ;
struct TYPE_9__ {TYPE_2__ dev; } ;
struct TYPE_7__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DFL_FPGA_FME_BRIDGE ; 
 int ENOMEM ; 
 struct dfl_fme_bridge* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 struct dfl_fme_bridge* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*,struct dfl_fme_br_pdata*,int) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static struct dfl_fme_bridge *
FUNC6(struct dfl_feature_platform_data *pdata, int port_id)
{
	struct device *dev = &pdata->dev->dev;
	struct dfl_fme_br_pdata br_pdata;
	struct dfl_fme_bridge *fme_br;
	int ret = -ENOMEM;

	fme_br = FUNC1(dev, sizeof(*fme_br), GFP_KERNEL);
	if (!fme_br)
		return FUNC0(ret);

	br_pdata.cdev = pdata->dfl_cdev;
	br_pdata.port_id = port_id;

	fme_br->br = FUNC4(DFL_FPGA_FME_BRIDGE,
					   PLATFORM_DEVID_AUTO);
	if (!fme_br->br)
		return FUNC0(ret);

	fme_br->br->dev.parent = dev;

	ret = FUNC3(fme_br->br, &br_pdata, sizeof(br_pdata));
	if (ret)
		goto create_br_err;

	ret = FUNC2(fme_br->br);
	if (ret)
		goto create_br_err;

	return fme_br;

create_br_err:
	FUNC5(fme_br->br);
	return FUNC0(ret);
}