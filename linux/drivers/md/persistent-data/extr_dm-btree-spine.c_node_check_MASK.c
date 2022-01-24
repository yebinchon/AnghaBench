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
struct node_header {scalar_t__ flags; scalar_t__ csum; scalar_t__ value_size; scalar_t__ max_entries; scalar_t__ nr_entries; int /*<<< orphan*/  blocknr; } ;
struct dm_block_validator {int dummy; } ;
struct dm_block {int dummy; } ;
struct btree_node {struct node_header header; } ;
typedef  int /*<<< orphan*/  __le64 ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  BTREE_CSUM_XOR ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EILSEQ ; 
 int ENOTBLK ; 
 int INTERNAL_NODE ; 
 int LEAF_NODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct btree_node* FUNC2 (struct dm_block*) ; 
 scalar_t__ FUNC3 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct dm_block_validator *v,
		      struct dm_block *b,
		      size_t block_size)
{
	struct btree_node *n = FUNC2(b);
	struct node_header *h = &n->header;
	size_t value_size;
	__le32 csum_disk;
	uint32_t flags;

	if (FUNC3(b) != FUNC6(h->blocknr)) {
		FUNC0("node_check failed: blocknr %llu != wanted %llu",
			    FUNC6(h->blocknr), FUNC3(b));
		return -ENOTBLK;
	}

	csum_disk = FUNC1(FUNC4(&h->flags,
					       block_size - sizeof(__le32),
					       BTREE_CSUM_XOR));
	if (csum_disk != h->csum) {
		FUNC0("node_check failed: csum %u != wanted %u",
			    FUNC5(csum_disk), FUNC5(h->csum));
		return -EILSEQ;
	}

	value_size = FUNC5(h->value_size);

	if (sizeof(struct node_header) +
	    (sizeof(__le64) + value_size) * FUNC5(h->max_entries) > block_size) {
		FUNC0("node_check failed: max_entries too large");
		return -EILSEQ;
	}

	if (FUNC5(h->nr_entries) > FUNC5(h->max_entries)) {
		FUNC0("node_check failed: too many entries");
		return -EILSEQ;
	}

	/*
	 * The node must be either INTERNAL or LEAF.
	 */
	flags = FUNC5(h->flags);
	if (!(flags & INTERNAL_NODE) && !(flags & LEAF_NODE)) {
		FUNC0("node_check failed: node is neither INTERNAL or LEAF");
		return -EILSEQ;
	}

	return 0;
}