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
struct ipu_pre {scalar_t__ buffer_virt; int /*<<< orphan*/  iram; int /*<<< orphan*/  clk_axi; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int IPU_PRE_MAX_WIDTH ; 
 int IPU_PRE_NUM_SCANLINES ; 
 int /*<<< orphan*/  available_pres ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,int) ; 
 int /*<<< orphan*/  ipu_pre_list_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ipu_pre* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct ipu_pre *pre = FUNC5(pdev);

	FUNC3(&ipu_pre_list_mutex);
	FUNC2(&pre->list);
	available_pres--;
	FUNC4(&ipu_pre_list_mutex);

	FUNC0(pre->clk_axi);

	if (pre->buffer_virt)
		FUNC1(pre->iram, (unsigned long)pre->buffer_virt,
			      IPU_PRE_MAX_WIDTH * IPU_PRE_NUM_SCANLINES * 4);
	return 0;
}