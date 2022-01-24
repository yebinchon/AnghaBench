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
struct nvkm_bios {scalar_t__ bit_offset; } ;
struct bit_entry {void* offset; void* length; scalar_t__ version; scalar_t__ id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct nvkm_bios*,scalar_t__) ; 
 void* FUNC2 (struct nvkm_bios*,scalar_t__) ; 

int
FUNC3(struct nvkm_bios *bios, u8 id, struct bit_entry *bit)
{
	if (FUNC0(bios->bit_offset)) {
		u8  entries = FUNC1(bios, bios->bit_offset + 10);
		u32 entry   = bios->bit_offset + 12;
		while (entries--) {
			if (FUNC1(bios, entry + 0) == id) {
				bit->id      = FUNC1(bios, entry + 0);
				bit->version = FUNC1(bios, entry + 1);
				bit->length  = FUNC2(bios, entry + 2);
				bit->offset  = FUNC2(bios, entry + 4);
				return 0;
			}

			entry += FUNC1(bios, bios->bit_offset + 9);
		}

		return -ENOENT;
	}

	return -EINVAL;
}