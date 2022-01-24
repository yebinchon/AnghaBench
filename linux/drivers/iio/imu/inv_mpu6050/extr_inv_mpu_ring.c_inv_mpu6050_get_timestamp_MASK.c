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
struct inv_mpu6050_state {int data_timestamp; int chip_period; } ;
typedef  int s64 ;

/* Variables and functions */
 int FUNC0 (struct inv_mpu6050_state*) ; 

__attribute__((used)) static s64 FUNC1(struct inv_mpu6050_state *st)
{
	s64 ts;

	/* return current data timestamp and increment */
	ts = st->data_timestamp;
	st->data_timestamp += st->chip_period * FUNC0(st);

	return ts;
}