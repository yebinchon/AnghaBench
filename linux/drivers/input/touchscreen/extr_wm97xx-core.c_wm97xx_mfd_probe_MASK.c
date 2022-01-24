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
struct wm97xx_platform_data {int /*<<< orphan*/  batt_pdata; int /*<<< orphan*/  ac97; } ;
struct wm97xx {int /*<<< orphan*/  ac97; int /*<<< orphan*/ * dev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct wm97xx*) ; 
 struct wm97xx_platform_data* FUNC1 (int /*<<< orphan*/ *) ; 
 struct wm97xx* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wm97xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wm97xx*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct wm97xx *wm;
	struct wm97xx_platform_data *mfd_pdata = FUNC1(&pdev->dev);
	int ret;

	wm = FUNC2(&pdev->dev, sizeof(struct wm97xx), GFP_KERNEL);
	if (!wm)
		return -ENOMEM;

	wm->dev = &pdev->dev;
	wm->ac97 = mfd_pdata->ac97;

	ret =  FUNC0(wm);
	if (ret)
		return ret;

	ret = FUNC3(wm, mfd_pdata->batt_pdata);
	if (ret < 0)
		goto batt_err;

	return ret;

batt_err:
	FUNC4(wm);
	return ret;
}