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
struct TYPE_2__ {int /*<<< orphan*/  nregs; int /*<<< orphan*/  regs; int /*<<< orphan*/ * base; } ;
struct vc4_v3d {TYPE_1__ regset; int /*<<< orphan*/ * clk; struct vc4_dev* vc4; int /*<<< orphan*/ * regs; struct platform_device* pdev; } ;
struct vc4_dev {struct vc4_v3d* v3d; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  V3D_BPOA ; 
 int /*<<< orphan*/  V3D_BPOS ; 
 scalar_t__ V3D_EXPECTED_IDENT0 ; 
 int /*<<< orphan*/  V3D_IDENT0 ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int) ; 
 struct drm_device* FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,struct vc4_v3d*) ; 
 int /*<<< orphan*/ * FUNC10 (struct device*,int /*<<< orphan*/ *) ; 
 struct vc4_v3d* FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 struct platform_device* FUNC18 (struct device*) ; 
 struct vc4_dev* FUNC19 (struct drm_device*) ; 
 int /*<<< orphan*/  v3d_regs ; 
 int /*<<< orphan*/  FUNC20 (struct drm_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct drm_device*,char*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC22 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vc4_v3d_debugfs_ident ; 
 int /*<<< orphan*/  FUNC23 (struct drm_device*) ; 

__attribute__((used)) static int FUNC24(struct device *dev, struct device *master, void *data)
{
	struct platform_device *pdev = FUNC18(dev);
	struct drm_device *drm = FUNC8(master);
	struct vc4_dev *vc4 = FUNC19(drm);
	struct vc4_v3d *v3d = NULL;
	int ret;

	v3d = FUNC11(&pdev->dev, sizeof(*v3d), GFP_KERNEL);
	if (!v3d)
		return -ENOMEM;

	FUNC9(dev, v3d);

	v3d->pdev = pdev;

	v3d->regs = FUNC22(pdev, 0);
	if (FUNC2(v3d->regs))
		return FUNC3(v3d->regs);
	v3d->regset.base = v3d->regs;
	v3d->regset.regs = v3d_regs;
	v3d->regset.nregs = FUNC0(v3d_regs);

	vc4->v3d = v3d;
	v3d->vc4 = vc4;

	v3d->clk = FUNC10(dev, NULL);
	if (FUNC2(v3d->clk)) {
		int ret = FUNC3(v3d->clk);

		if (ret == -ENOENT) {
			/* bcm2835 didn't have a clock reference in the DT. */
			ret = 0;
			v3d->clk = NULL;
		} else {
			if (ret != -EPROBE_DEFER)
				FUNC7(dev, "Failed to get V3D clock: %d\n",
					ret);
			return ret;
		}
	}

	if (FUNC4(V3D_IDENT0) != V3D_EXPECTED_IDENT0) {
		FUNC1("V3D_IDENT0 read 0x%08x instead of 0x%08x\n",
			  FUNC4(V3D_IDENT0), V3D_EXPECTED_IDENT0);
		return -EINVAL;
	}

	ret = FUNC6(v3d->clk);
	if (ret != 0)
		return ret;

	/* Reset the binner overflow address/size at setup, to be sure
	 * we don't reuse an old one.
	 */
	FUNC5(V3D_BPOA, 0);
	FUNC5(V3D_BPOS, 0);

	FUNC23(drm);

	ret = FUNC12(drm, FUNC13(pdev, 0));
	if (ret) {
		FUNC1("Failed to install IRQ handler\n");
		return ret;
	}

	FUNC15(dev);
	FUNC17(dev);
	FUNC16(dev, 40); /* a little over 2 frames. */
	FUNC14(dev);

	FUNC20(drm, "v3d_ident", vc4_v3d_debugfs_ident, NULL);
	FUNC21(drm, "v3d_regs", &v3d->regset);

	return 0;
}