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
struct i40iw_device {int /*<<< orphan*/  resource_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static inline bool FUNC3(struct i40iw_device *iwdev,
					       unsigned long *resource_array,
					       u32 resource_num)
{
	bool bit_is_set;
	unsigned long flags;

	FUNC0(&iwdev->resource_lock, flags);

	bit_is_set = FUNC2(resource_num, resource_array);
	FUNC1(&iwdev->resource_lock, flags);

	return bit_is_set;
}