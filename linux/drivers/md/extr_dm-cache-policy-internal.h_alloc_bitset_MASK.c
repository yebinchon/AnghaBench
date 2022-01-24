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

/* Variables and functions */
 size_t FUNC0 (unsigned int) ; 
 unsigned long* FUNC1 (size_t) ; 

__attribute__((used)) static inline unsigned long *FUNC2(unsigned nr_entries)
{
	size_t s = FUNC0(nr_entries);
	return FUNC1(s);
}