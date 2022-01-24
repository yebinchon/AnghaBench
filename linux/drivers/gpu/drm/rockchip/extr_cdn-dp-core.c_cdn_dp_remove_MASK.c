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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct cdn_dp_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  audio_pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  cdn_dp_component_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct cdn_dp_device* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct cdn_dp_device *dp = FUNC3(pdev);

	FUNC2(dp->audio_pdev);
	FUNC0(dp->dev);
	FUNC1(&pdev->dev, &cdn_dp_component_ops);

	return 0;
}