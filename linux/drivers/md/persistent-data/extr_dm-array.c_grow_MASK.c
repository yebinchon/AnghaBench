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
struct resize {scalar_t__ new_nr_full_blocks; scalar_t__ old_nr_full_blocks; int /*<<< orphan*/  new_nr_entries_in_last_block; scalar_t__ old_nr_entries_in_last_block; } ;

/* Variables and functions */
 int FUNC0 (struct resize*) ; 
 int FUNC1 (struct resize*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct resize*) ; 

__attribute__((used)) static int FUNC3(struct resize *resize)
{
	if (resize->new_nr_full_blocks > resize->old_nr_full_blocks)
		return FUNC2(resize);

	else if (resize->old_nr_entries_in_last_block)
		return FUNC1(resize, resize->new_nr_entries_in_last_block);

	else
		return FUNC0(resize);
}