#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pstore {scalar_t__ current_area; TYPE_1__* store; int /*<<< orphan*/  area; } ;
typedef  void dm_bufio_client ;
struct dm_buffer {int dummy; } ;
typedef  scalar_t__ chunk_t ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;
struct TYPE_3__ {int chunk_size; int /*<<< orphan*/  snap; } ;

/* Variables and functions */
 scalar_t__ DM_PREFETCH_CHUNKS ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int SECTOR_SHIFT ; 
 scalar_t__ FUNC2 (struct pstore*,scalar_t__) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,scalar_t__) ; 
 scalar_t__ FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*,scalar_t__,int) ; 
 void* FUNC8 (void*,scalar_t__,struct dm_buffer**) ; 
 int /*<<< orphan*/  FUNC9 (struct dm_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (void*,scalar_t__) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct pstore*,void*,int (*) (void*,chunk_t,chunk_t),void*,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct pstore*) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct pstore *ps,
			   int (*callback)(void *callback_context, chunk_t old,
					   chunk_t new),
			   void *callback_context)
{
	int r, full = 1;
	struct dm_bufio_client *client;
	chunk_t prefetch_area = 0;

	client = FUNC3(FUNC11(ps->store->snap)->bdev,
					ps->store->chunk_size << SECTOR_SHIFT,
					1, 0, NULL, NULL);

	if (FUNC0(client))
		return FUNC1(client);

	/*
	 * Setup for one current buffer + desired readahead buffers.
	 */
	FUNC10(client, 1 + DM_PREFETCH_CHUNKS);

	/*
	 * Keeping reading chunks and inserting exceptions until
	 * we find a partially full area.
	 */
	for (ps->current_area = 0; full; ps->current_area++) {
		struct dm_buffer *bp;
		void *area;
		chunk_t chunk;

		if (FUNC15(prefetch_area < ps->current_area))
			prefetch_area = ps->current_area;

		if (DM_PREFETCH_CHUNKS) do {
			chunk_t pf_chunk = FUNC2(ps, prefetch_area);
			if (FUNC15(pf_chunk >= FUNC6(client)))
				break;
			FUNC7(client, pf_chunk, 1);
			prefetch_area++;
			if (FUNC15(!prefetch_area))
				break;
		} while (prefetch_area <= ps->current_area + DM_PREFETCH_CHUNKS);

		chunk = FUNC2(ps, ps->current_area);

		area = FUNC8(client, chunk, &bp);
		if (FUNC0(area)) {
			r = FUNC1(area);
			goto ret_destroy_bufio;
		}

		r = FUNC12(ps, area, callback, callback_context,
				      &full);

		if (!full)
			FUNC13(ps->area, area, ps->store->chunk_size << SECTOR_SHIFT);

		FUNC9(bp);

		FUNC5(client, chunk);

		if (FUNC15(r))
			goto ret_destroy_bufio;
	}

	ps->current_area--;

	FUNC14(ps);

	r = 0;

ret_destroy_bufio:
	FUNC4(client);

	return r;
}