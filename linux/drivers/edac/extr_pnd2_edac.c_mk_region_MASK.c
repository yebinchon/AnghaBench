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
typedef  void* u64 ;
struct region {int enabled; void* limit; void* base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*,void*,void*) ; 

__attribute__((used)) static void FUNC1(char *name, struct region *rp, u64 base, u64 limit)
{
	rp->enabled = 1;
	rp->base = base;
	rp->limit = limit;
	FUNC0(2, "Region:%s [%llx, %llx]\n", name, base, limit);
}