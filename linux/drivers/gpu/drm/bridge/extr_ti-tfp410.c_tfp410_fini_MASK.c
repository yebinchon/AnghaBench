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
struct tfp410 {scalar_t__ hpd_irq; scalar_t__ hpd; scalar_t__ ddc; int /*<<< orphan*/  bridge; int /*<<< orphan*/  hpd_work; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct tfp410* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct tfp410 *dvi = FUNC1(dev);

	if (dvi->hpd_irq >= 0)
		FUNC0(&dvi->hpd_work);

	FUNC2(&dvi->bridge);

	if (dvi->ddc)
		FUNC4(dvi->ddc);
	if (dvi->hpd)
		FUNC3(dvi->hpd);

	return 0;
}