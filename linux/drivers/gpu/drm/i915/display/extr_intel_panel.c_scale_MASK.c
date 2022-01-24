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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static u32 FUNC4(u32 source_val,
		 u32 source_min, u32 source_max,
		 u32 target_min, u32 target_max)
{
	u64 target_val;

	FUNC1(source_min > source_max);
	FUNC1(target_min > target_max);

	/* defensive */
	source_val = FUNC2(source_val, source_min, source_max);

	/* avoid overflows */
	target_val = FUNC3(source_val - source_min,
				 target_max - target_min);
	target_val = FUNC0(target_val, source_max - source_min);
	target_val += target_min;

	return target_val;
}