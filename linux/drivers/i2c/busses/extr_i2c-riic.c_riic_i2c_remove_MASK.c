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
struct riic_dev {int /*<<< orphan*/  adapter; scalar_t__ base; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ RIIC_ICIER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct riic_dev* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct riic_dev *riic = FUNC1(pdev);

	FUNC3(&pdev->dev);
	FUNC5(0, riic->base + RIIC_ICIER);
	FUNC4(&pdev->dev);
	FUNC0(&riic->adapter);
	FUNC2(&pdev->dev);

	return 0;
}