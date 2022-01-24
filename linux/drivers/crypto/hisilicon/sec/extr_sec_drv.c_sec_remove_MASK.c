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
struct sec_dev_info {int /*<<< orphan*/ * queues; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int SEC_Q_NUM ; 
 struct sec_dev_info* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sec_dev_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct sec_dev_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sec_dev_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct sec_dev_info *info = FUNC0(pdev);
	int i;

	/* Unexpose as soon as possible, reuse during remove is fine */
	FUNC3(info);

	FUNC1();

	for (i = 0; i < SEC_Q_NUM; i++) {
		FUNC4(&info->queues[i]);
		FUNC5(info, &info->queues[i]);
	}

	FUNC2(info);

	return 0;
}