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
struct platform_device {int dummy; } ;
struct da9055_onkey {int /*<<< orphan*/  input; int /*<<< orphan*/  work; TYPE_1__* da9055; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,struct da9055_onkey*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct da9055_onkey* FUNC3 (struct platform_device*) ; 
 int FUNC4 (struct platform_device*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct da9055_onkey *onkey = FUNC3(pdev);
	int irq = FUNC4(pdev, "ONKEY");

	irq = FUNC5(onkey->da9055->irq_data, irq);
	FUNC1(irq, onkey);
	FUNC0(&onkey->work);
	FUNC2(onkey->input);

	return 0;
}