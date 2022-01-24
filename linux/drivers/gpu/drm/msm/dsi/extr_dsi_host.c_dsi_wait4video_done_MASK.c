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
typedef  scalar_t__ u32 ;
struct msm_dsi_host {int /*<<< orphan*/  video_comp; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  DSI_IRQ_MASK_VIDEO_DONE ; 
 int /*<<< orphan*/  FUNC1 (struct msm_dsi_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct msm_dsi_host *msm_host)
{
	u32 ret = 0;
	struct device *dev = &msm_host->pdev->dev;

	FUNC1(msm_host, DSI_IRQ_MASK_VIDEO_DONE, 1);

	FUNC3(&msm_host->video_comp);

	ret = FUNC4(&msm_host->video_comp,
			FUNC2(70));

	if (ret == 0)
		FUNC0(dev, "wait for video done timed out\n");

	FUNC1(msm_host, DSI_IRQ_MASK_VIDEO_DONE, 0);
}