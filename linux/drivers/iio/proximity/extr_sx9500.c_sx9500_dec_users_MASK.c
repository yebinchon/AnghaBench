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
struct sx9500_data {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct sx9500_data *data, int *counter,
			    unsigned int reg, unsigned int bitmask)
{
	(*counter)--;
	if (*counter != 0)
		/* There are more users, do not deactivate. */
		return 0;

	return FUNC0(data->regmap, reg, bitmask, 0);
}