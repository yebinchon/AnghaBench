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
struct i40iw_puda_rsrc {int /*<<< orphan*/  avail_buf_count; int /*<<< orphan*/  bufpool_lock; int /*<<< orphan*/  bufpool; } ;
struct i40iw_puda_buf {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct i40iw_puda_rsrc *rsrc,
			    struct i40iw_puda_buf *buf)
{
	unsigned long	flags;

	FUNC1(&rsrc->bufpool_lock, flags);
	FUNC0(&buf->list, &rsrc->bufpool);
	FUNC2(&rsrc->bufpool_lock, flags);
	rsrc->avail_buf_count++;
}