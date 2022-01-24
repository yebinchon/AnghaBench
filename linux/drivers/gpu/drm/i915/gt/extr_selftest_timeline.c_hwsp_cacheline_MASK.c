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
struct intel_timeline {unsigned long hwsp_offset; } ;

/* Variables and functions */
 unsigned long CACHELINE_BYTES ; 
 int /*<<< orphan*/  FUNC0 (struct intel_timeline*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC2(struct intel_timeline *tl)
{
	unsigned long address = (unsigned long)FUNC1(FUNC0(tl));

	return (address + tl->hwsp_offset) / CACHELINE_BYTES;
}