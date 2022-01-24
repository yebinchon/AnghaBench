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
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 

__attribute__((used)) static inline u32 FUNC4(
	unsigned mod_id, unsigned offset, bool auto_inc)
{
	u32 v = FUNC1(0xf)
		| FUNC2(mod_id)
		| FUNC3(offset);
	if (auto_inc)
		v |= FUNC0(1);
	return v;
}