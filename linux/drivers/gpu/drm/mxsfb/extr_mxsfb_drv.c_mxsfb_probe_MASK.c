#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; int /*<<< orphan*/  id_entry; } ;
struct of_device_id {int /*<<< orphan*/  data; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int FUNC1 (struct drm_device*) ; 
 struct drm_device* FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int FUNC4 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int) ; 
 int /*<<< orphan*/  mxsfb_driver ; 
 int /*<<< orphan*/  mxsfb_dt_ids ; 
 int FUNC6 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 struct of_device_id* FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct drm_device *drm;
	const struct of_device_id *of_id =
			FUNC8(mxsfb_dt_ids, &pdev->dev);
	int ret;

	if (!pdev->dev.of_node)
		return -ENODEV;

	if (of_id)
		pdev->id_entry = of_id->data;

	drm = FUNC2(&mxsfb_driver, &pdev->dev);
	if (FUNC0(drm))
		return FUNC1(drm);

	ret = FUNC6(drm, 0);
	if (ret)
		goto err_free;

	ret = FUNC4(drm, 0);
	if (ret)
		goto err_unload;

	FUNC5(drm, 32);

	return 0;

err_unload:
	FUNC7(drm);
err_free:
	FUNC3(drm);

	return ret;
}