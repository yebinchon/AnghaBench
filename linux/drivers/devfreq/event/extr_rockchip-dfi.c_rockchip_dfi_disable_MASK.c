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
struct devfreq_event_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct rockchip_dfi* FUNC1 (struct devfreq_event_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct devfreq_event_dev*) ; 

__attribute__((used)) static int FUNC3(struct devfreq_event_dev *edev)
{
	struct rockchip_dfi *info = FUNC1(edev);

	FUNC2(edev);
	FUNC0(info->clk);

	return 0;
}