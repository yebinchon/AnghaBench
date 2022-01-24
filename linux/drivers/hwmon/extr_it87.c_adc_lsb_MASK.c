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
struct it87_data {int in_scaled; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct it87_data const*) ; 
 scalar_t__ FUNC2 (struct it87_data const*) ; 

__attribute__((used)) static int FUNC3(const struct it87_data *data, int nr)
{
	int lsb;

	if (FUNC2(data))
		lsb = 120;
	else if (FUNC1(data))
		lsb = 109;
	else
		lsb = 160;
	if (data->in_scaled & FUNC0(nr))
		lsb <<= 1;
	return lsb;
}