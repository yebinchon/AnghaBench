#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct transient_c {scalar_t__ next_free; } ;
struct dm_exception_store {scalar_t__ chunk_size; int /*<<< orphan*/  snap; struct transient_c* context; } ;
struct dm_exception {int /*<<< orphan*/  new_chunk; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_exception_store*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct dm_exception_store *store,
				       struct dm_exception *e)
{
	struct transient_c *tc = store->context;
	sector_t size = FUNC1(FUNC0(store->snap)->bdev);

	if (size < (tc->next_free + store->chunk_size))
		return -1;

	e->new_chunk = FUNC2(store, tc->next_free);
	tc->next_free += store->chunk_size;

	return 0;
}