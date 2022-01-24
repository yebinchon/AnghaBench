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
struct mixer_context {int /*<<< orphan*/  irq; TYPE_1__* pdev; int /*<<< orphan*/ * mixer_regs; void* sclk_hdmi; void* hdmi; void* mixer; int /*<<< orphan*/  reg_slock; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 void* FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mixer_context*) ; 
 int /*<<< orphan*/  mixer_irq_handler ; 
 struct resource* FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct mixer_context *mixer_ctx)
{
	struct device *dev = &mixer_ctx->pdev->dev;
	struct resource *res;
	int ret;

	FUNC8(&mixer_ctx->reg_slock);

	mixer_ctx->mixer = FUNC3(dev, "mixer");
	if (FUNC0(mixer_ctx->mixer)) {
		FUNC2(dev, "failed to get clock 'mixer'\n");
		return -ENODEV;
	}

	mixer_ctx->hdmi = FUNC3(dev, "hdmi");
	if (FUNC0(mixer_ctx->hdmi)) {
		FUNC2(dev, "failed to get clock 'hdmi'\n");
		return FUNC1(mixer_ctx->hdmi);
	}

	mixer_ctx->sclk_hdmi = FUNC3(dev, "sclk_hdmi");
	if (FUNC0(mixer_ctx->sclk_hdmi)) {
		FUNC2(dev, "failed to get clock 'sclk_hdmi'\n");
		return -ENODEV;
	}
	res = FUNC6(mixer_ctx->pdev, IORESOURCE_MEM, 0);
	if (res == NULL) {
		FUNC2(dev, "get memory resource failed.\n");
		return -ENXIO;
	}

	mixer_ctx->mixer_regs = FUNC4(dev, res->start,
							FUNC7(res));
	if (mixer_ctx->mixer_regs == NULL) {
		FUNC2(dev, "register mapping failed.\n");
		return -ENXIO;
	}

	res = FUNC6(mixer_ctx->pdev, IORESOURCE_IRQ, 0);
	if (res == NULL) {
		FUNC2(dev, "get interrupt resource failed.\n");
		return -ENXIO;
	}

	ret = FUNC5(dev, res->start, mixer_irq_handler,
						0, "drm_mixer", mixer_ctx);
	if (ret) {
		FUNC2(dev, "request interrupt failed.\n");
		return ret;
	}
	mixer_ctx->irq = res->start;

	return 0;
}