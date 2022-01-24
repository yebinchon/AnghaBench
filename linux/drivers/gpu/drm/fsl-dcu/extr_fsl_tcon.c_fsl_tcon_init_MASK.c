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
struct fsl_tcon {int /*<<< orphan*/  ipg_clk; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct fsl_tcon* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,struct fsl_tcon*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 struct device_node* FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

struct fsl_tcon *FUNC9(struct device *dev)
{
	struct fsl_tcon *tcon;
	struct device_node *np;
	int ret;

	/* TCON node is not mandatory, some devices do not provide TCON */
	np = FUNC8(dev->of_node, "fsl,tcon", 0);
	if (!np)
		return NULL;

	tcon = FUNC4(dev, sizeof(*tcon), GFP_KERNEL);
	if (!tcon)
		goto err_node_put;

	ret = FUNC5(dev, tcon, np);
	if (ret) {
		FUNC2(dev, "Couldn't create the TCON regmap\n");
		goto err_node_put;
	}

	tcon->ipg_clk = FUNC6(np, "ipg");
	if (FUNC0(tcon->ipg_clk)) {
		FUNC2(dev, "Couldn't get the TCON bus clock\n");
		goto err_node_put;
	}

	ret = FUNC1(tcon->ipg_clk);
	if (ret) {
		FUNC2(dev, "Couldn't enable the TCON clock\n");
		goto err_node_put;
	}

	FUNC7(np);
	FUNC3(dev, "Using TCON in bypass mode\n");

	return tcon;

err_node_put:
	FUNC7(np);
	return NULL;
}