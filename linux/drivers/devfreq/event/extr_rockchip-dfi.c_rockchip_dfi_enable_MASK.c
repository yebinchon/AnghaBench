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
struct rockchip_dfi {int /*<<< orphan*/  clk; } ;
struct devfreq_event_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct rockchip_dfi* FUNC2 (struct devfreq_event_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct devfreq_event_dev*) ; 

__attribute__((used)) static int FUNC4(struct devfreq_event_dev *edev)
{
	struct rockchip_dfi *info = FUNC2(edev);
	int ret;

	ret = FUNC0(info->clk);
	if (ret) {
		FUNC1(&edev->dev, "failed to enable dfi clk: %d\n", ret);
		return ret;
	}

	FUNC3(edev);
	return 0;
}