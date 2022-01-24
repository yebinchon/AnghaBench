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
struct platform_device {int dummy; } ;
struct cros_ec_extcon_info {int /*<<< orphan*/  notifier; TYPE_1__* ec; } ;
struct TYPE_2__ {int /*<<< orphan*/  event_notifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct cros_ec_extcon_info* FUNC1 (struct platform_device*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct cros_ec_extcon_info *info = FUNC1(pdev);

	FUNC0(&info->ec->event_notifier,
					   &info->notifier);

	return 0;
}