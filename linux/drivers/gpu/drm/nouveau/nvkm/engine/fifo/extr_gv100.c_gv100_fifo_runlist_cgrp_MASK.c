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
	FUNC0(memory, offset + 0x0, (128 << 24) | (3 << 16) | 0x00000001);
	FUNC0(memory, offset + 0x4, cgrp->chan_nr);
	FUNC0(memory, offset + 0x8, cgrp->id);
	FUNC0(memory, offset + 0xc, 0x00000000);
}