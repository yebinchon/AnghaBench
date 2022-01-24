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
struct of_phandle_args {int /*<<< orphan*/  np; } ;
struct mbox_client {int /*<<< orphan*/  rx_callback; struct device* dev; } ;
struct mbox_chan {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IMX_SC_R_MU_0A ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mbox_chan*) ; 
 int FUNC2 (struct mbox_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct mbox_client*) ; 
 struct mbox_client* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  imx_sc_irq_ipc_handle ; 
 int /*<<< orphan*/  imx_sc_irq_work ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  imx_scu_irq_callback ; 
 int /*<<< orphan*/  imx_scu_irq_work_handler ; 
 struct mbox_chan* FUNC7 (struct mbox_client*,char*) ; 
 scalar_t__ mu_resource_id ; 
 int FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,struct of_phandle_args*) ; 

int FUNC10(struct device *dev)
{
	struct of_phandle_args spec;
	struct mbox_client *cl;
	struct mbox_chan *ch;
	int ret = 0, i = 0;

	ret = FUNC6(&imx_sc_irq_ipc_handle);
	if (ret)
		return ret;

	cl = FUNC5(dev, sizeof(*cl), GFP_KERNEL);
	if (!cl)
		return -ENOMEM;

	cl->dev = dev;
	cl->rx_callback = imx_scu_irq_callback;

	/* SCU general IRQ uses general interrupt channel 3 */
	ch = FUNC7(cl, "gip3");
	if (FUNC1(ch)) {
		ret = FUNC2(ch);
		FUNC3(dev, "failed to request mbox chan gip3, ret %d\n", ret);
		FUNC4(dev, cl);
		return ret;
	}

	FUNC0(&imx_sc_irq_work, imx_scu_irq_work_handler);

	if (!FUNC9(dev->of_node, "mboxes",
				       "#mbox-cells", 0, &spec))
		i = FUNC8(spec.np, "mu");

	/* use mu1 as general mu irq channel if failed */
	if (i < 0)
		i = 1;

	mu_resource_id = IMX_SC_R_MU_0A + i;

	return ret;
}