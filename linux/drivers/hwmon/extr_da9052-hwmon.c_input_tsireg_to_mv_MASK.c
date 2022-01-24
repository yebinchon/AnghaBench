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
struct da9052_hwmon {int tsiref_mv; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 

__attribute__((used)) static inline int FUNC1(struct da9052_hwmon *hwmon, int value)
{
	return FUNC0(value * hwmon->tsiref_mv, 1023);
}