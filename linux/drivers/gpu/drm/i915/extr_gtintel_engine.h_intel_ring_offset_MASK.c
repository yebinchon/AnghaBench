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
typedef  scalar_t__ u32 ;
struct i915_request {TYPE_1__* ring; } ;
struct TYPE_2__ {int vaddr; scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static inline u32 FUNC2(const struct i915_request *rq, void *addr)
{
	/* Don't write ring->size (equivalent to 0) as that hangs some GPUs. */
	u32 offset = addr - rq->ring->vaddr;
	FUNC0(offset > rq->ring->size);
	return FUNC1(rq->ring, offset);
}