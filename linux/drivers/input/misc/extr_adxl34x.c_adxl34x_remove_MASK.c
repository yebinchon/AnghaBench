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
struct adxl34x {TYPE_1__* dev; int /*<<< orphan*/  input; int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  adxl34x_attr_group ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct adxl34x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adxl34x*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC5(struct adxl34x *ac)
{
	FUNC4(&ac->dev->kobj, &adxl34x_attr_group);
	FUNC1(ac->irq, ac);
	FUNC2(ac->input);
	FUNC0(ac->dev, "unregistered accelerometer\n");
	FUNC3(ac);

	return 0;
}