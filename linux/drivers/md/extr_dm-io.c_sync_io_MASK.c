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
struct sync_io {unsigned long error_bits; int /*<<< orphan*/  wait; } ;
struct io {int /*<<< orphan*/  vma_invalidate_size; int /*<<< orphan*/  vma_invalidate_address; struct sync_io* context; int /*<<< orphan*/  callback; struct dm_io_client* client; int /*<<< orphan*/  count; scalar_t__ error_bits; } ;
struct dpages {int /*<<< orphan*/  vma_invalidate_size; int /*<<< orphan*/  vma_invalidate_address; } ;
struct dm_io_region {int dummy; } ;
struct dm_io_client {int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,unsigned int,struct dm_io_region*,struct dpages*,struct io*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct io* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  sync_io_complete ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct dm_io_client *client, unsigned int num_regions,
		   struct dm_io_region *where, int op, int op_flags,
		   struct dpages *dp, unsigned long *error_bits)
{
	struct io *io;
	struct sync_io sio;

	if (num_regions > 1 && !FUNC5(op)) {
		FUNC0(1);
		return -EIO;
	}

	FUNC3(&sio.wait);

	io = FUNC4(&client->pool, GFP_NOIO);
	io->error_bits = 0;
	FUNC1(&io->count, 1); /* see dispatch_io() */
	io->client = client;
	io->callback = sync_io_complete;
	io->context = &sio;

	io->vma_invalidate_address = dp->vma_invalidate_address;
	io->vma_invalidate_size = dp->vma_invalidate_size;

	FUNC2(op, op_flags, num_regions, where, dp, io, 1);

	FUNC6(&sio.wait);

	if (error_bits)
		*error_bits = sio.error_bits;

	return sio.error_bits ? -EIO : 0;
}