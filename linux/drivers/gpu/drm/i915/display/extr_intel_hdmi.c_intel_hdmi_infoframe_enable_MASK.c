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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int* infoframe_type_to_idx ; 

u32 FUNC2(unsigned int type)
{
	int i;

	for (i = 0; i < FUNC0(infoframe_type_to_idx); i++) {
		if (infoframe_type_to_idx[i] == type)
			return FUNC1(i);
	}

	return 0;
}