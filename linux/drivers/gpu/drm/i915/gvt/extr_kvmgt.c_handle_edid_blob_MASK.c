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
typedef  scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ edid_size; } ;
struct vfio_edid_region {char* edid_blob; TYPE_1__ vfio_edid_regs; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 

__attribute__((used)) static int FUNC1(struct vfio_edid_region *region, char *buf,
			size_t count, u16 offset, bool is_write)
{
	if (offset + count > region->vfio_edid_regs.edid_size)
		return -EINVAL;

	if (is_write)
		FUNC0(region->edid_blob + offset, buf, count);
	else
		FUNC0(buf, region->edid_blob + offset, count);

	return count;
}