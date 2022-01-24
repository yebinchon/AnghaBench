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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DESC_TYPE_MASK ; 
 int /*<<< orphan*/  DESC_TYPE_SHIFT ; 
 scalar_t__ NPTR_TYPE ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static bool FUNC2(void *desc_ptr)
{
	u64 desc = FUNC1(desc_ptr);
	u32 type = FUNC0(desc, DESC_TYPE_SHIFT, DESC_TYPE_MASK);

	return (type == NPTR_TYPE) ? true : false;
}