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
struct platform_device {int dummy; } ;
struct abx500_temp {scalar_t__ work_active; } ;

/* Variables and functions */
 struct abx500_temp* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct abx500_temp*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct abx500_temp *data = FUNC0(pdev);

	if (data->work_active)
		FUNC1(data);

	return 0;
}