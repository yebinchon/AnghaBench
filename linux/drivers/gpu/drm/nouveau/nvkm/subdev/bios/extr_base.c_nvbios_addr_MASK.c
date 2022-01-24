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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct nvkm_bios {scalar_t__ image0_size; scalar_t__ size; int /*<<< orphan*/  subdev; scalar_t__ imaged_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static bool
FUNC2(struct nvkm_bios *bios, u32 *addr, u8 size)
{
	u32 p = *addr;

	if (*addr > bios->image0_size && bios->imaged_addr) {
		*addr -= bios->image0_size;
		*addr += bios->imaged_addr;
	}

	if (FUNC1(*addr + size >= bios->size)) {
		FUNC0(&bios->subdev, "OOB %d %08x %08x\n", size, p, *addr);
		return false;
	}

	return true;
}