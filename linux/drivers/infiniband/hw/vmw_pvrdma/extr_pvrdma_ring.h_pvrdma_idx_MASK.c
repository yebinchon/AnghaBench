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
typedef  int /*<<< orphan*/  atomic_t ;
typedef  int __u32 ;
typedef  unsigned int const __s32 ;

/* Variables and functions */
 unsigned int const PVRDMA_INVALID_IDX ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (unsigned int const,int) ; 

__attribute__((used)) static inline __s32 FUNC2(atomic_t *var, __u32 max_elems)
{
	const unsigned int idx = FUNC0(var);

	if (FUNC1(idx, max_elems))
		return idx & (max_elems - 1);
	return PVRDMA_INVALID_IDX;
}