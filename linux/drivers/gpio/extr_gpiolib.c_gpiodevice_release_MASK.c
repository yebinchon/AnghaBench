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
struct gpio_device {struct gpio_device* descs; int /*<<< orphan*/  label; int /*<<< orphan*/  id; int /*<<< orphan*/  list; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct gpio_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  gpio_ida ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct gpio_device *gdev = FUNC0(dev);

	FUNC4(&gdev->list);
	FUNC1(&gpio_ida, gdev->id);
	FUNC3(gdev->label);
	FUNC2(gdev->descs);
	FUNC2(gdev);
}