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
struct fw_iso_buffer {int direction; int page_count; int page_count_mapped; int /*<<< orphan*/ * pages; } ;
struct fw_card {int /*<<< orphan*/  device; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct fw_iso_buffer *buffer, struct fw_card *card,
			  enum dma_data_direction direction)
{
	dma_addr_t address;
	int i;

	buffer->direction = direction;

	for (i = 0; i < buffer->page_count; i++) {
		address = FUNC0(card->device, buffer->pages[i],
				       0, PAGE_SIZE, direction);
		if (FUNC1(card->device, address))
			break;

		FUNC2(buffer->pages[i], address);
	}
	buffer->page_count_mapped = i;
	if (i < buffer->page_count)
		return -ENOMEM;

	return 0;
}