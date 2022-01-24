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
typedef  scalar_t__ u32 ;
struct nvkm_memory {int dummy; } ;
struct nvkm_fifo_cgrp {int chan_nr; int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_memory*,scalar_t__,int) ; 

void
FUNC1(struct nvkm_fifo_cgrp *cgrp,
			struct nvkm_memory *memory, u32 offset)
{
	FUNC0(memory, offset + 0, (cgrp->chan_nr << 26) | (128 << 18) |
				      (3 << 14) | 0x00002000 | cgrp->id);
	FUNC0(memory, offset + 4, 0x00000000);
}