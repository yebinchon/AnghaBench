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
struct dm_buffer {scalar_t__ hold_count; int /*<<< orphan*/  state; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_DIRTY ; 
 int /*<<< orphan*/  B_READING ; 
 int /*<<< orphan*/  B_WRITING ; 
 int __GFP_FS ; 
 int /*<<< orphan*/  FUNC0 (struct dm_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_buffer*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(struct dm_buffer *b, gfp_t gfp)
{
	if (!(gfp & __GFP_FS)) {
		if (FUNC3(B_READING, &b->state) ||
		    FUNC3(B_WRITING, &b->state) ||
		    FUNC3(B_DIRTY, &b->state))
			return false;
	}

	if (b->hold_count)
		return false;

	FUNC1(b);
	FUNC2(b);
	FUNC0(b);

	return true;
}