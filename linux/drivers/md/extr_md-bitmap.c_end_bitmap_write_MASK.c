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
struct buffer_head {struct bitmap* b_private; } ;
struct bitmap {int /*<<< orphan*/  write_wait; int /*<<< orphan*/  pending_writes; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITMAP_WRITE_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct buffer_head *bh, int uptodate)
{
	struct bitmap *bitmap = bh->b_private;

	if (!uptodate)
		FUNC1(BITMAP_WRITE_ERROR, &bitmap->flags);
	if (FUNC0(&bitmap->pending_writes))
		FUNC2(&bitmap->write_wait);
}