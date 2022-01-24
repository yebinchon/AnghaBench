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
struct regulator {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct regulator*) ; 
 int FUNC1 (struct regulator*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct regulator*,int,int) ; 

__attribute__((used)) static inline int FUNC3(struct regulator *supply)
{
	int ret;
	int voltage = FUNC1(supply, 0);

	if (voltage <= 0)
		return 1;

	/* even if regulator can't change voltages,
	 * we still assume it can change status
	 * and the LED can be turned on and off.
	 */
	ret = FUNC2(supply, voltage, voltage);
	if (ret < 0)
		return 1;

	return FUNC0(supply);
}