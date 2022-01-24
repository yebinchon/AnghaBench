#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  notifier_call; } ;
struct sii8620 {TYPE_2__* dev; TYPE_1__ extcon_nb; int /*<<< orphan*/  extcon_wq; struct extcon_dev* extcon; } ;
struct extcon_dev {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  EXTCON_DISP_MHL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct extcon_dev*) ; 
 int FUNC2 (struct extcon_dev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 struct extcon_dev* FUNC5 (struct device_node*) ; 
 int FUNC6 (struct extcon_dev*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 struct device_node* FUNC7 (struct device_node*) ; 
 struct device_node* FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*) ; 
 int /*<<< orphan*/  sii8620_extcon_notifier ; 
 int /*<<< orphan*/  sii8620_extcon_work ; 

__attribute__((used)) static int FUNC10(struct sii8620 *ctx)
{
	struct extcon_dev *edev;
	struct device_node *musb, *muic;
	int ret;

	/* get micro-USB connector node */
	musb = FUNC8(ctx->dev->of_node, 1, -1);
	/* next get micro-USB Interface Controller node */
	muic = FUNC7(musb);

	if (!muic) {
		FUNC4(ctx->dev, "no extcon found, switching to 'always on' mode\n");
		return 0;
	}

	edev = FUNC5(muic);
	FUNC9(muic);
	if (FUNC1(edev)) {
		if (FUNC2(edev) == -EPROBE_DEFER)
			return -EPROBE_DEFER;
		FUNC3(ctx->dev, "Invalid or missing extcon\n");
		return FUNC2(edev);
	}

	ctx->extcon = edev;
	ctx->extcon_nb.notifier_call = sii8620_extcon_notifier;
	FUNC0(&ctx->extcon_wq, sii8620_extcon_work);
	ret = FUNC6(edev, EXTCON_DISP_MHL, &ctx->extcon_nb);
	if (ret) {
		FUNC3(ctx->dev, "failed to register notifier for MHL\n");
		return ret;
	}

	return 0;
}