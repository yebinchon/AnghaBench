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
typedef  int /*<<< orphan*/  u32 ;
struct altera_cvp_conf {TYPE_1__* priv; TYPE_2__* pci_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  poll_time_us; } ;

/* Variables and functions */
 int /*<<< orphan*/  VSE_CVP_PROG_CTRL ; 
 int /*<<< orphan*/  VSE_CVP_PROG_CTRL_MASK ; 
 int /*<<< orphan*/  VSE_CVP_STATUS_CFG_RDY ; 
 int FUNC0 (struct altera_cvp_conf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct altera_cvp_conf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct altera_cvp_conf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC4(struct altera_cvp_conf *conf)
{
	u32 val;
	int ret;

	/* Clear the START_XFER and CVP_CONFIG bits */
	ret = FUNC1(conf, VSE_CVP_PROG_CTRL, &val);
	if (ret) {
		FUNC3(&conf->pci_dev->dev,
			"Error reading CVP Program Control Register\n");
		return ret;
	}

	val &= ~VSE_CVP_PROG_CTRL_MASK;
	ret = FUNC2(conf, VSE_CVP_PROG_CTRL, val);
	if (ret) {
		FUNC3(&conf->pci_dev->dev,
			"Error writing CVP Program Control Register\n");
		return ret;
	}

	return FUNC0(conf, VSE_CVP_STATUS_CFG_RDY, 0,
				      conf->priv->poll_time_us);
}