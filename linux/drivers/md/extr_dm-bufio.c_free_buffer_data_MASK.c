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
struct dm_bufio_client {scalar_t__ sectors_per_block_bits; int /*<<< orphan*/  slab_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  DATA_MODE_GET_FREE_PAGES 130 
#define  DATA_MODE_SLAB 129 
#define  DATA_MODE_VMALLOC 128 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char) ; 
 scalar_t__ PAGE_SHIFT ; 
 scalar_t__ SECTOR_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

__attribute__((used)) static void FUNC5(struct dm_bufio_client *c,
			     void *data, unsigned char data_mode)
{
	switch (data_mode) {
	case DATA_MODE_SLAB:
		FUNC3(c->slab_cache, data);
		break;

	case DATA_MODE_GET_FREE_PAGES:
		FUNC2((unsigned long)data,
			   c->sectors_per_block_bits - (PAGE_SHIFT - SECTOR_SHIFT));
		break;

	case DATA_MODE_VMALLOC:
		FUNC4(data);
		break;

	default:
		FUNC1("dm_bufio_free_buffer_data: bad data mode: %d",
		       data_mode);
		FUNC0();
	}
}