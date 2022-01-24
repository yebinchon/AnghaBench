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
typedef  int /*<<< orphan*/  uint32_t ;
struct packer_context {void* context; int /*<<< orphan*/  nr_bits; int /*<<< orphan*/  fn; } ;
struct dm_disk_bitset {int /*<<< orphan*/  array_info; } ;
typedef  int /*<<< orphan*/  dm_block_t ;
typedef  int /*<<< orphan*/  bit_value_fn ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct packer_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pack_bits ; 

int FUNC2(struct dm_disk_bitset *info, dm_block_t *root,
		  uint32_t size, bit_value_fn fn, void *context)
{
	struct packer_context p;
	p.fn = fn;
	p.nr_bits = size;
	p.context = context;

	return FUNC0(&info->array_info, root, FUNC1(size, 64), pack_bits, &p);
}