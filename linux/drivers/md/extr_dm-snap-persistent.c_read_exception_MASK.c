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
typedef  int /*<<< orphan*/  uint32_t ;
struct pstore {int dummy; } ;
struct disk_exception {int /*<<< orphan*/  new_chunk; int /*<<< orphan*/  old_chunk; } ;
struct core_exception {void* new_chunk; void* old_chunk; } ;

/* Variables and functions */
 struct disk_exception* FUNC0 (struct pstore*,void*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct pstore *ps, void *ps_area,
			   uint32_t index, struct core_exception *result)
{
	struct disk_exception *de = FUNC0(ps, ps_area, index);

	/* copy it */
	result->old_chunk = FUNC1(de->old_chunk);
	result->new_chunk = FUNC1(de->new_chunk);
}