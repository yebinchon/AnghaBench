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
struct block_device {int dummy; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 scalar_t__ THIN_METADATA_MAX_SECTORS ; 
 scalar_t__ FUNC0 (struct block_device*) ; 

__attribute__((used)) static sector_t FUNC1(struct block_device *bdev)
{
	sector_t metadata_dev_size = FUNC0(bdev);

	if (metadata_dev_size > THIN_METADATA_MAX_SECTORS)
		metadata_dev_size = THIN_METADATA_MAX_SECTORS;

	return metadata_dev_size;
}