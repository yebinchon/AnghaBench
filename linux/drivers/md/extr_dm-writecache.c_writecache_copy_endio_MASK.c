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
struct dm_writecache {int /*<<< orphan*/  endio_list_lock; int /*<<< orphan*/  endio_list; int /*<<< orphan*/  endio_thread; } ;
struct copy_struct {int /*<<< orphan*/  endio_entry; int /*<<< orphan*/  error; struct dm_writecache* wc; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(int read_err, unsigned long write_err, void *ptr)
{
	struct copy_struct *c = ptr;
	struct dm_writecache *wc = c->wc;

	c->error = FUNC0(!(read_err | write_err)) ? 0 : -EIO;

	FUNC3(&wc->endio_list_lock);
	if (FUNC5(FUNC2(&wc->endio_list)))
		FUNC6(wc->endio_thread);
	FUNC1(&c->endio_entry, &wc->endio_list);
	FUNC4(&wc->endio_list_lock);
}