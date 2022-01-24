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
struct resource {int /*<<< orphan*/  start; } ;
struct mixer_context {int /*<<< orphan*/ * vp_regs; TYPE_1__* pdev; scalar_t__ sclk_hdmi; void* mout_mixer; void* sclk_mixer; int /*<<< orphan*/  flags; void* vp; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  MXR_BIT_HAS_SCLK ; 
 int /*<<< orphan*/  FUNC1 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 void* FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct mixer_context *mixer_ctx)
{
	struct device *dev = &mixer_ctx->pdev->dev;
	struct resource *res;

	mixer_ctx->vp = FUNC3(dev, "vp");
	if (FUNC0(mixer_ctx->vp)) {
		FUNC2(dev, "failed to get clock 'vp'\n");
		return -ENODEV;
	}

	if (FUNC7(MXR_BIT_HAS_SCLK, &mixer_ctx->flags)) {
		mixer_ctx->sclk_mixer = FUNC3(dev, "sclk_mixer");
		if (FUNC0(mixer_ctx->sclk_mixer)) {
			FUNC2(dev, "failed to get clock 'sclk_mixer'\n");
			return -ENODEV;
		}
		mixer_ctx->mout_mixer = FUNC3(dev, "mout_mixer");
		if (FUNC0(mixer_ctx->mout_mixer)) {
			FUNC2(dev, "failed to get clock 'mout_mixer'\n");
			return -ENODEV;
		}

		if (mixer_ctx->sclk_hdmi && mixer_ctx->mout_mixer)
			FUNC1(mixer_ctx->mout_mixer,
				       mixer_ctx->sclk_hdmi);
	}

	res = FUNC5(mixer_ctx->pdev, IORESOURCE_MEM, 1);
	if (res == NULL) {
		FUNC2(dev, "get memory resource failed.\n");
		return -ENXIO;
	}

	mixer_ctx->vp_regs = FUNC4(dev, res->start,
							FUNC6(res));
	if (mixer_ctx->vp_regs == NULL) {
		FUNC2(dev, "register mapping failed.\n");
		return -ENXIO;
	}

	return 0;
}