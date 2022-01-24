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
typedef  scalar_t__ u16 ;
struct pmbus_sensor {int dummy; } ;
struct pmbus_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 long FUNC1 (long,int,int) ; 

__attribute__((used)) static u16 FUNC2(struct pmbus_data *data,
			      struct pmbus_sensor *sensor, long val)
{
	val = FUNC1(val, 500, 1600);

	return 2 + FUNC0((1600 - val) * 100, 625);
}