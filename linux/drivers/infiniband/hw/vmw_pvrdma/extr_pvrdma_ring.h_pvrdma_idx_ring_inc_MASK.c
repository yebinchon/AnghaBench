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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline void FUNC2(atomic_t *var, __u32 max_elems)
{
	__u32 idx = FUNC0(var) + 1;	/* Increment. */

	idx &= (max_elems << 1) - 1;		/* Modulo size, flip gen. */
	FUNC1(var, idx);
}