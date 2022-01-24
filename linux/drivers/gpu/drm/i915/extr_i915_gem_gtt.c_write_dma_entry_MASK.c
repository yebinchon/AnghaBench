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
struct i915_page_dma {int /*<<< orphan*/  page; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const) ; 

__attribute__((used)) static inline void
FUNC2(struct i915_page_dma * const pdma,
		const unsigned short idx,
		const u64 encoded_entry)
{
	u64 * const vaddr = FUNC0(pdma->page);

	vaddr[idx] = encoded_entry;
	FUNC1(vaddr);
}