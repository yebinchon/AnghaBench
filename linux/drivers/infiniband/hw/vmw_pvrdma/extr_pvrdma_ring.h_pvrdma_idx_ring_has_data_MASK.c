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
struct pvrdma_ring {int /*<<< orphan*/  cons_head; int /*<<< orphan*/  prod_tail; } ;
typedef  int __u32 ;
typedef  int __s32 ;

/* Variables and functions */
 int PVRDMA_INVALID_IDX ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int const,int) ; 

__attribute__((used)) static inline __s32 FUNC2(const struct pvrdma_ring *r,
					     __u32 max_elems, __u32 *out_head)
{
	const __u32 tail = FUNC0(&r->prod_tail);
	const __u32 head = FUNC0(&r->cons_head);

	if (FUNC1(tail, max_elems) &&
	    FUNC1(head, max_elems)) {
		*out_head = head & (max_elems - 1);
		return tail != head;
	}
	return PVRDMA_INVALID_IDX;
}