#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__* cpustat; } ;

/* Variables and functions */
 size_t CPUTIME_IDLE ; 
 size_t CPUTIME_IOWAIT ; 
 size_t CPUTIME_NICE ; 
 TYPE_1__ FUNC0 (unsigned int) ; 
 scalar_t__ rackmeter_ignore_nice ; 

__attribute__((used)) static inline u64 FUNC1(unsigned int cpu)
{
	u64 retval;

	retval = FUNC0(cpu).cpustat[CPUTIME_IDLE] +
		 FUNC0(cpu).cpustat[CPUTIME_IOWAIT];

	if (rackmeter_ignore_nice)
		retval += FUNC0(cpu).cpustat[CPUTIME_NICE];

	return retval;
}