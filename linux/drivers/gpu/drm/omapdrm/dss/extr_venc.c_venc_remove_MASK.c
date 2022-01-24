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
struct venc_device {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct venc_device*) ; 
 struct venc_device* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  venc_component_ops ; 
 int /*<<< orphan*/  FUNC4 (struct venc_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct venc_device *venc = FUNC2(pdev);

	FUNC0(&pdev->dev, &venc_component_ops);

	FUNC4(venc);

	FUNC3(&pdev->dev);

	FUNC1(venc);
	return 0;
}