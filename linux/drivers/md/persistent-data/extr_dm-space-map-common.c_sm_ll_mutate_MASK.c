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
typedef  int uint32_t ;
struct ll_disk {int (* load_ie ) (struct ll_disk*,int /*<<< orphan*/ ,struct disk_index_entry*) ;int (* save_ie ) (struct ll_disk*,int /*<<< orphan*/ ,struct disk_index_entry*) ;int /*<<< orphan*/  nr_allocated; int /*<<< orphan*/  ref_count_root; int /*<<< orphan*/  ref_count_info; int /*<<< orphan*/  tm; int /*<<< orphan*/  entries_per_block; } ;
struct dm_block {int dummy; } ;
struct disk_index_entry {void* none_free_before; int /*<<< orphan*/  nr_free; int /*<<< orphan*/  blocknr; } ;
typedef  enum allocation_event { ____Placeholder_allocation_event } allocation_event ;
typedef  int /*<<< orphan*/  dm_block_t ;
typedef  void* __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int SM_ALLOC ; 
 int SM_FREE ; 
 int SM_NONE ; 
 int /*<<< orphan*/  FUNC1 (void**) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_block*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dm_sm_bitmap_validator ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dm_block**,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct dm_block*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int,int) ; 
 int FUNC15 (struct ll_disk*,int /*<<< orphan*/ ,int*) ; 
 int FUNC16 (void*,int) ; 
 int /*<<< orphan*/  FUNC17 (void*,int,int) ; 
 int FUNC18 (struct ll_disk*,int /*<<< orphan*/ ,struct disk_index_entry*) ; 
 int FUNC19 (struct ll_disk*,int /*<<< orphan*/ ,struct disk_index_entry*) ; 

__attribute__((used)) static int FUNC20(struct ll_disk *ll, dm_block_t b,
			int (*mutator)(void *context, uint32_t old, uint32_t *new),
			void *context, enum allocation_event *ev)
{
	int r;
	uint32_t bit, old, ref_count;
	struct dm_block *nb;
	dm_block_t index = b;
	struct disk_index_entry ie_disk;
	void *bm_le;
	int inc;

	bit = FUNC10(index, ll->entries_per_block);
	r = ll->load_ie(ll, index, &ie_disk);
	if (r < 0)
		return r;

	r = FUNC8(ll->tm, FUNC13(ie_disk.blocknr),
			       &dm_sm_bitmap_validator, &nb, &inc);
	if (r < 0) {
		FUNC0("dm_tm_shadow_block() failed");
		return r;
	}
	ie_disk.blocknr = FUNC3(FUNC5(nb));

	bm_le = FUNC4(nb);
	old = FUNC16(bm_le, bit);

	if (old > 2) {
		r = FUNC15(ll, b, &old);
		if (r < 0) {
			FUNC9(ll->tm, nb);
			return r;
		}
	}

	r = mutator(context, old, &ref_count);
	if (r) {
		FUNC9(ll->tm, nb);
		return r;
	}

	if (ref_count <= 2) {
		FUNC17(bm_le, bit, ref_count);

		FUNC9(ll->tm, nb);

		if (old > 2) {
			r = FUNC7(&ll->ref_count_info,
					    ll->ref_count_root,
					    &b, &ll->ref_count_root);
			if (r)
				return r;
		}

	} else {
		__le32 le_rc = FUNC2(ref_count);

		FUNC17(bm_le, bit, 3);
		FUNC9(ll->tm, nb);

		FUNC1(&le_rc);
		r = FUNC6(&ll->ref_count_info, ll->ref_count_root,
				    &b, &le_rc, &ll->ref_count_root);
		if (r < 0) {
			FUNC0("ref count insert failed");
			return r;
		}
	}

	if (ref_count && !old) {
		*ev = SM_ALLOC;
		ll->nr_allocated++;
		FUNC11(&ie_disk.nr_free, -1);
		if (FUNC12(ie_disk.none_free_before) == bit)
			ie_disk.none_free_before = FUNC2(bit + 1);

	} else if (old && !ref_count) {
		*ev = SM_FREE;
		ll->nr_allocated--;
		FUNC11(&ie_disk.nr_free, 1);
		ie_disk.none_free_before = FUNC2(FUNC14(FUNC12(ie_disk.none_free_before), bit));
	} else
		*ev = SM_NONE;

	return ll->save_ie(ll, index, &ie_disk);
}