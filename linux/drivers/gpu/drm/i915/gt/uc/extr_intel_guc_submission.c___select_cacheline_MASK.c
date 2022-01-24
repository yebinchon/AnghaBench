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
struct intel_guc {int /*<<< orphan*/  db_cacheline; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC3(struct intel_guc *guc)
{
	unsigned long offset;

	/* Doorbell uses a single cache line within a page */
	offset = FUNC2(guc->db_cacheline);

	/* Moving to next cache line to reduce contention */
	guc->db_cacheline += FUNC1();

	FUNC0("reserved cacheline 0x%lx, next 0x%x, linesize %u\n",
			 offset, guc->db_cacheline, FUNC1());
	return offset;
}