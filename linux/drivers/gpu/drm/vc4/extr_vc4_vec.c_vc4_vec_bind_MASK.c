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
struct TYPE_3__ {int /*<<< orphan*/  base; int /*<<< orphan*/  type; } ;
struct vc4_vec_encoder {TYPE_1__ base; struct vc4_vec* vec; } ;
struct TYPE_4__ {int /*<<< orphan*/  nregs; int /*<<< orphan*/  regs; int /*<<< orphan*/  base; } ;
struct vc4_vec {int /*<<< orphan*/ * encoder; TYPE_2__ regset; int /*<<< orphan*/  connector; int /*<<< orphan*/  clock; int /*<<< orphan*/  regs; struct platform_device* pdev; } ;
struct vc4_dev {struct vc4_vec* vec; } ;
struct platform_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_TVDAC ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VC4_ENCODER_TYPE_VEC ; 
 struct drm_device* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct vc4_vec*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 void* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 struct platform_device* FUNC14 (struct device*) ; 
 struct vc4_dev* FUNC15 (struct drm_device*) ; 
 int /*<<< orphan*/  tv_mode_names ; 
 int /*<<< orphan*/  FUNC16 (struct drm_device*,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct drm_device*,struct vc4_vec*) ; 
 int /*<<< orphan*/  vc4_vec_encoder_funcs ; 
 int /*<<< orphan*/  vc4_vec_encoder_helper_funcs ; 
 int /*<<< orphan*/  vec_regs ; 

__attribute__((used)) static int FUNC19(struct device *dev, struct device *master, void *data)
{
	struct platform_device *pdev = FUNC14(dev);
	struct drm_device *drm = FUNC4(master);
	struct vc4_dev *vc4 = FUNC15(drm);
	struct vc4_vec *vec;
	struct vc4_vec_encoder *vc4_vec_encoder;
	int ret;

	ret = FUNC11(drm, FUNC0(tv_mode_names),
					    tv_mode_names);
	if (ret)
		return ret;

	vec = FUNC7(dev, sizeof(*vec), GFP_KERNEL);
	if (!vec)
		return -ENOMEM;

	vc4_vec_encoder = FUNC7(dev, sizeof(*vc4_vec_encoder),
				       GFP_KERNEL);
	if (!vc4_vec_encoder)
		return -ENOMEM;
	vc4_vec_encoder->base.type = VC4_ENCODER_TYPE_VEC;
	vc4_vec_encoder->vec = vec;
	vec->encoder = &vc4_vec_encoder->base.base;

	vec->pdev = pdev;
	vec->regs = FUNC17(pdev, 0);
	if (FUNC2(vec->regs))
		return FUNC3(vec->regs);
	vec->regset.base = vec->regs;
	vec->regset.regs = vec_regs;
	vec->regset.nregs = FUNC0(vec_regs);

	vec->clock = FUNC6(dev, NULL);
	if (FUNC2(vec->clock)) {
		ret = FUNC3(vec->clock);
		if (ret != -EPROBE_DEFER)
			FUNC1("Failed to get clock: %d\n", ret);
		return ret;
	}

	FUNC13(dev);

	FUNC10(drm, vec->encoder, &vc4_vec_encoder_funcs,
			 DRM_MODE_ENCODER_TVDAC, NULL);
	FUNC9(vec->encoder, &vc4_vec_encoder_helper_funcs);

	vec->connector = FUNC18(drm, vec);
	if (FUNC2(vec->connector)) {
		ret = FUNC3(vec->connector);
		goto err_destroy_encoder;
	}

	FUNC5(dev, vec);

	vc4->vec = vec;

	FUNC16(drm, "vec_regs", &vec->regset);

	return 0;

err_destroy_encoder:
	FUNC8(vec->encoder);
	FUNC12(dev);

	return ret;
}