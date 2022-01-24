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
struct vop_data {int feature; int /*<<< orphan*/  win_size; } ;
struct vop {unsigned int irq; int /*<<< orphan*/  rgb; struct drm_device* drm_dev; int /*<<< orphan*/  crtc; struct vop_data const* data; int /*<<< orphan*/  vop_lock; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  reg_lock; void* regsbak; int /*<<< orphan*/  len; int /*<<< orphan*/  regs; struct device* dev; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int VOP_FEATURE_INTERNAL_RGB ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct vop*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct resource*) ; 
 void* FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vop*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct vop_data* FUNC9 (struct device*) ; 
 int FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct resource*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*,int /*<<< orphan*/ *,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct vop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC18 (struct device*) ; 
 int FUNC19 (struct vop*) ; 
 int /*<<< orphan*/  FUNC20 (struct vop*) ; 
 int FUNC21 (struct vop*) ; 
 int /*<<< orphan*/  vop_isr ; 
 int /*<<< orphan*/  FUNC22 (struct vop*) ; 
 int /*<<< orphan*/  win ; 

__attribute__((used)) static int FUNC23(struct device *dev, struct device *master, void *data)
{
	struct platform_device *pdev = FUNC18(dev);
	const struct vop_data *vop_data;
	struct drm_device *drm_dev = data;
	struct vop *vop;
	struct resource *res;
	int ret, irq;

	vop_data = FUNC9(dev);
	if (!vop_data)
		return -ENODEV;

	/* Allocate vop struct and its vop_win array */
	vop = FUNC6(dev, FUNC17(vop, win, vop_data->win_size),
			   GFP_KERNEL);
	if (!vop)
		return -ENOMEM;

	vop->dev = dev;
	vop->data = vop_data;
	vop->drm_dev = drm_dev;
	FUNC4(dev, vop);

	FUNC22(vop);

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	vop->len = FUNC14(res);
	vop->regs = FUNC5(dev, res);
	if (FUNC1(vop->regs))
		return FUNC2(vop->regs);

	vop->regsbak = FUNC6(dev, vop->len, GFP_KERNEL);
	if (!vop->regsbak)
		return -ENOMEM;

	irq = FUNC10(pdev, 0);
	if (irq < 0) {
		FUNC0(dev, "cannot find irq for vop\n");
		return irq;
	}
	vop->irq = (unsigned int)irq;

	FUNC16(&vop->reg_lock);
	FUNC16(&vop->irq_lock);
	FUNC8(&vop->vop_lock);

	ret = FUNC19(vop);
	if (ret)
		return ret;

	FUNC13(&pdev->dev);

	ret = FUNC21(vop);
	if (ret < 0) {
		FUNC0(&pdev->dev,
			      "cannot initial vop dev - err %d\n", ret);
		goto err_disable_pm_runtime;
	}

	ret = FUNC7(dev, vop->irq, vop_isr,
			       IRQF_SHARED, FUNC3(dev), vop);
	if (ret)
		goto err_disable_pm_runtime;

	if (vop->data->feature & VOP_FEATURE_INTERNAL_RGB) {
		vop->rgb = FUNC15(dev, &vop->crtc, vop->drm_dev);
		if (FUNC1(vop->rgb)) {
			ret = FUNC2(vop->rgb);
			goto err_disable_pm_runtime;
		}
	}

	return 0;

err_disable_pm_runtime:
	FUNC12(&pdev->dev);
	FUNC20(vop);
	return ret;
}