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
struct fw_iso_buffer {int dummy; } ;
struct fw_card {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int FUNC0 (struct fw_iso_buffer*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fw_iso_buffer*,struct fw_card*) ; 
 int FUNC2 (struct fw_iso_buffer*,struct fw_card*,int) ; 

int FUNC3(struct fw_iso_buffer *buffer, struct fw_card *card,
		       int page_count, enum dma_data_direction direction)
{
	int ret;

	ret = FUNC0(buffer, page_count);
	if (ret < 0)
		return ret;

	ret = FUNC2(buffer, card, direction);
	if (ret < 0)
		FUNC1(buffer, card);

	return ret;
}