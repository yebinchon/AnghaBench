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
typedef  long s16 ;

/* Variables and functions */
 long FUNC0 (long,int,int) ; 

__attribute__((used)) static inline s16 FUNC1(long val)
{
	val = FUNC0(val, -60000, 160000);
	return val * 10 / 625 * 8;
}