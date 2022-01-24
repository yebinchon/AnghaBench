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
struct vidi_context {int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; struct device* dev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_connection ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 struct vidi_context* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct vidi_context*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vidi_component_ops ; 
 int /*<<< orphan*/  vidi_fake_vblank_timer ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct vidi_context *ctx;
	struct device *dev = &pdev->dev;
	int ret;

	ctx = FUNC4(dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->dev = dev;

	FUNC7(&ctx->timer, vidi_fake_vblank_timer, 0);

	FUNC5(&ctx->lock);

	FUNC6(pdev, ctx);

	ret = FUNC2(dev, &dev_attr_connection);
	if (ret < 0) {
		FUNC0(dev,
			      "failed to create connection sysfs.\n");
		return ret;
	}

	ret = FUNC1(dev, &vidi_component_ops);
	if (ret)
		goto err_remove_file;

	return ret;

err_remove_file:
	FUNC3(dev, &dev_attr_connection);

	return ret;
}