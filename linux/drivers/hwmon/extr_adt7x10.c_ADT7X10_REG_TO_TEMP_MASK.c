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
struct adt7x10_data {int config; } ;
typedef  int s16 ;

/* Variables and functions */
 int ADT7X10_RESOLUTION ; 
 int ADT7X10_T13_VALUE_MASK ; 
 int FUNC0 (int,int) ; 

__attribute__((used)) static int FUNC1(struct adt7x10_data *data, s16 reg)
{
	/* in 13 bit mode, bits 0-2 are status flags - mask them out */
	if (!(data->config & ADT7X10_RESOLUTION))
		reg &= ADT7X10_T13_VALUE_MASK;
	/*
	 * temperature is stored in twos complement format, in steps of
	 * 1/128°C
	 */
	return FUNC0(reg * 1000, 128);
}