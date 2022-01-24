#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int ngpio; } ;
struct lp_gpio {TYPE_1__ chip; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int GPINDIS_BIT ; 
 int /*<<< orphan*/  LP_CONFIG2 ; 
 struct lp_gpio* FUNC0 (struct device*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct lp_gpio *lg = FUNC0(dev);
	unsigned long reg;
	int i;

	/* on some hardware suspend clears input sensing, re-enable it here */
	for (i = 0; i < lg->chip.ngpio; i++) {
		if (FUNC1(&lg->chip, i) != NULL) {
			reg = FUNC3(&lg->chip, i, LP_CONFIG2);
			FUNC4(FUNC2(reg) & ~GPINDIS_BIT, reg);
		}
	}
	return 0;
}