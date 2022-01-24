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
struct pool {int /*<<< orphan*/  all_io_ds; } ;
struct dm_thin_endio_hook {int /*<<< orphan*/  all_io_entry; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 scalar_t__ REQ_OP_DISCARD ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct dm_thin_endio_hook* FUNC2 (struct bio*,int) ; 

__attribute__((used)) static void FUNC3(struct pool *pool, struct bio *bio)
{
	struct dm_thin_endio_hook *h;

	if (FUNC0(bio) == REQ_OP_DISCARD)
		return;

	h = FUNC2(bio, sizeof(struct dm_thin_endio_hook));
	h->all_io_entry = FUNC1(pool->all_io_ds);
}