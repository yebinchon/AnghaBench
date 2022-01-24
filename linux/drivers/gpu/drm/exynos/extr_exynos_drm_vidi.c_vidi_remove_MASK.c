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
struct vidi_context {struct edid* raw_edid; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct edid {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ fake_edid_info ; 
 int /*<<< orphan*/  FUNC1 (struct edid*) ; 
 struct vidi_context* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  vidi_component_ops ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct vidi_context *ctx = FUNC2(pdev);

	if (ctx->raw_edid != (struct edid *)fake_edid_info) {
		FUNC1(ctx->raw_edid);
		ctx->raw_edid = NULL;

		return -EINVAL;
	}

	FUNC0(&pdev->dev, &vidi_component_ops);

	return 0;
}