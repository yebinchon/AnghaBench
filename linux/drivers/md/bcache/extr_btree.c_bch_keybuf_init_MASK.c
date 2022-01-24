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
struct keybuf {int /*<<< orphan*/  freelist; int /*<<< orphan*/  lock; int /*<<< orphan*/  keys; int /*<<< orphan*/  last_scanned; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_KEY ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct keybuf *buf)
{
	buf->last_scanned	= MAX_KEY;
	buf->keys		= RB_ROOT;

	FUNC1(&buf->lock);
	FUNC0(&buf->freelist);
}