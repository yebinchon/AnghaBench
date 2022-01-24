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
struct dw_hdmi_cec {int /*<<< orphan*/  adap; int /*<<< orphan*/  notify; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct dw_hdmi_cec* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct dw_hdmi_cec *cec = FUNC2(pdev);

	FUNC0(cec->notify);
	FUNC1(cec->adap);

	return 0;
}