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
typedef  unsigned int uint32_t ;
struct dm_btree_value_type {int /*<<< orphan*/  size; int /*<<< orphan*/  context; int /*<<< orphan*/  (* inc ) (int /*<<< orphan*/ ,void const*) ;int /*<<< orphan*/  (* dec ) (int /*<<< orphan*/ ,void*) ;int /*<<< orphan*/  (* equal ) (int /*<<< orphan*/ ,void*,void const*) ;} ;
struct dm_block {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tm; } ;
struct dm_array_info {struct dm_btree_value_type value_type; TYPE_1__ btree_info; } ;
struct array_block {int /*<<< orphan*/  nr_entries; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int ENODATA ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct dm_array_info*,struct array_block*,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,void const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct dm_array_info*,int /*<<< orphan*/ *,unsigned int,struct dm_block**,struct array_block**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,void const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC10 (struct dm_array_info*,struct dm_block*) ; 

__attribute__((used)) static int FUNC11(struct dm_array_info *info, dm_block_t root,
			   uint32_t index, const void *value, dm_block_t *new_root)
{
	int r;
	struct dm_block *block;
	struct array_block *ab;
	size_t size_of_block;
	unsigned max_entries;
	unsigned entry;
	void *old_value;
	struct dm_btree_value_type *vt = &info->value_type;

	size_of_block = FUNC1(FUNC2(info->btree_info.tm));
	max_entries = FUNC0(info->value_type.size, size_of_block);

	r = FUNC6(info, &root, index / max_entries, &block, &ab);
	if (r)
		return r;
	*new_root = root;

	entry = index % max_entries;
	if (entry >= FUNC4(ab->nr_entries)) {
		r = -ENODATA;
		goto out;
	}

	old_value = FUNC3(info, ab, entry);
	if (vt->dec &&
	    (!vt->equal || !vt->equal(vt->context, old_value, value))) {
		vt->dec(vt->context, old_value);
		if (vt->inc)
			vt->inc(vt->context, value);
	}

	FUNC5(old_value, value, info->value_type.size);

out:
	FUNC10(info, block);
	return r;
}