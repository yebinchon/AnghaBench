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
struct cami2c {struct cami2c* ioarea; int /*<<< orphan*/  iobase; int /*<<< orphan*/  irq; int /*<<< orphan*/  adap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cami2c*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cami2c*) ; 
 struct cami2c* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct cami2c*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct cami2c *id = FUNC4(pdev);

	FUNC1(&id->adap);
	FUNC0(id->irq, id);
	FUNC2(id->iobase);
	FUNC5(id->ioarea);
	FUNC3(id->ioarea);
	FUNC3(id);

	return 0;
}