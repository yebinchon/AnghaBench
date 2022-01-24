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
struct TYPE_3__ {int /*<<< orphan*/  nregs; int /*<<< orphan*/  regs; int /*<<< orphan*/  base; } ;
struct TYPE_4__ {int /*<<< orphan*/  base; } ;
struct vc4_txp {TYPE_1__ regset; TYPE_2__ connector; int /*<<< orphan*/  regs; struct platform_device* pdev; } ;
struct vc4_dev {struct vc4_txp* txp; } ;
struct platform_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct drm_device* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct vc4_txp*) ; 
 struct vc4_txp* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vc4_txp*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drm_fmts ; 
 int FUNC9 (struct drm_device*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC11 (struct device*) ; 
 struct vc4_dev* FUNC12 (struct drm_device*) ; 
 int /*<<< orphan*/  txp_regs ; 
 int /*<<< orphan*/  FUNC13 (struct drm_device*,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vc4_txp_connector_funcs ; 
 int /*<<< orphan*/  vc4_txp_connector_helper_funcs ; 
 int /*<<< orphan*/  vc4_txp_encoder_helper_funcs ; 
 int /*<<< orphan*/  vc4_txp_interrupt ; 

__attribute__((used)) static int FUNC15(struct device *dev, struct device *master, void *data)
{
	struct platform_device *pdev = FUNC11(dev);
	struct drm_device *drm = FUNC3(master);
	struct vc4_dev *vc4 = FUNC12(drm);
	struct vc4_txp *txp;
	int ret, irq;

	irq = FUNC10(pdev, 0);
	if (irq < 0)
		return irq;

	txp = FUNC6(dev, sizeof(*txp), GFP_KERNEL);
	if (!txp)
		return -ENOMEM;

	txp->pdev = pdev;

	txp->regs = FUNC14(pdev, 0);
	if (FUNC1(txp->regs))
		return FUNC2(txp->regs);
	txp->regset.base = txp->regs;
	txp->regset.regs = txp_regs;
	txp->regset.nregs = FUNC0(txp_regs);

	FUNC8(&txp->connector.base,
				 &vc4_txp_connector_helper_funcs);
	ret = FUNC9(drm, &txp->connector,
					   &vc4_txp_connector_funcs,
					   &vc4_txp_encoder_helper_funcs,
					   drm_fmts, FUNC0(drm_fmts));
	if (ret)
		return ret;

	ret = FUNC7(dev, irq, vc4_txp_interrupt, 0,
			       FUNC4(dev), txp);
	if (ret)
		return ret;

	FUNC5(dev, txp);
	vc4->txp = txp;

	FUNC13(drm, "txp_regs", &txp->regset);

	return 0;
}