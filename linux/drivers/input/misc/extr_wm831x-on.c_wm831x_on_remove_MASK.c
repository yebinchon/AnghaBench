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
struct wm831x_on {int /*<<< orphan*/  work; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,struct wm831x_on*) ; 
 struct wm831x_on* FUNC2 (struct platform_device*) ; 
 int FUNC3 (struct platform_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct wm831x_on *wm831x_on = FUNC2(pdev);
	int irq = FUNC3(pdev, 0);

	FUNC1(irq, wm831x_on);
	FUNC0(&wm831x_on->work);

	return 0;
}