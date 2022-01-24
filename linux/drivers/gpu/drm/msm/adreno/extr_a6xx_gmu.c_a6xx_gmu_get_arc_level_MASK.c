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
struct device {int dummy; } ;
struct dev_pm_opp {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dev_pm_opp*) ; 
 struct dev_pm_opp* FUNC1 (struct device*,unsigned long,int) ; 
 unsigned int FUNC2 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC3 (struct dev_pm_opp*) ; 

__attribute__((used)) static unsigned int FUNC4(struct device *dev,
					   unsigned long freq)
{
	struct dev_pm_opp *opp;
	unsigned int val;

	if (!freq)
		return 0;

	opp = FUNC1(dev, freq, true);
	if (FUNC0(opp))
		return 0;

	val = FUNC2(opp);

	FUNC3(opp);

	return val;
}