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
struct qcom_apcs_ipc {struct platform_device* clk; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct platform_device*) ; 
 struct qcom_apcs_ipc* FUNC1 (struct platform_device*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct qcom_apcs_ipc *apcs = FUNC1(pdev);
	struct platform_device *clk = apcs->clk;

	FUNC0(clk);

	return 0;
}