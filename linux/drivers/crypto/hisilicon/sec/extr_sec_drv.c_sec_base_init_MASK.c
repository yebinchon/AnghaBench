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
struct sec_dev_info {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sec_dev_info*) ; 
 int FUNC1 (struct sec_dev_info*) ; 
 int FUNC2 (struct sec_dev_info*) ; 
 int FUNC3 (struct sec_dev_info*,struct platform_device*) ; 
 int FUNC4 (struct sec_dev_info*) ; 

__attribute__((used)) static int FUNC5(struct sec_dev_info *info,
			 struct platform_device *pdev)
{
	int ret;

	ret = FUNC3(info, pdev);
	if (ret)
		return ret;

	ret = FUNC1(info);
	if (ret)
		return ret;

	ret = FUNC4(info);
	if (ret)
		goto sec_clk_disable;

	ret = FUNC2(info);
	if (ret)
		goto sec_clk_disable;

	return 0;

sec_clk_disable:
	FUNC0(info);

	return ret;
}