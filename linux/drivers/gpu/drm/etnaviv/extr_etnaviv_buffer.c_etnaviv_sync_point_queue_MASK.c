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
typedef  int u32 ;
struct etnaviv_cmdbuf {int user_size; } ;
struct etnaviv_gpu {TYPE_1__* mmu_context; int /*<<< orphan*/  lock; struct etnaviv_cmdbuf buffer; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmdbuf_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct etnaviv_cmdbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct etnaviv_cmdbuf*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct etnaviv_cmdbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct etnaviv_cmdbuf*) ; 
 int /*<<< orphan*/  VIVS_GL_EVENT ; 
 int FUNC4 (unsigned int) ; 
 int VIVS_GL_EVENT_FROM_PE ; 
 int VIV_FE_LINK_HEADER_OP_LINK ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct etnaviv_cmdbuf*,unsigned int,int,int) ; 
 int FUNC7 (struct etnaviv_gpu*,struct etnaviv_cmdbuf*,int) ; 
 scalar_t__ FUNC8 (struct etnaviv_cmdbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct etnaviv_gpu *gpu, unsigned int event)
{
	struct etnaviv_cmdbuf *buffer = &gpu->buffer;
	unsigned int waitlink_offset = buffer->user_size - 16;
	u32 dwords, target;

	FUNC9(&gpu->lock);

	/*
	 * We need at most 3 dwords in the return target:
	 * 1 event + 1 end + 1 wait + 1 link.
	 */
	dwords = 4;
	target = FUNC7(gpu, buffer, dwords);

	/* Signal sync point event */
	FUNC2(buffer, VIVS_GL_EVENT, FUNC4(event) |
		       VIVS_GL_EVENT_FROM_PE);

	/* Stop the FE to 'pause' the GPU */
	FUNC0(buffer);

	/* Append waitlink */
	FUNC3(buffer);
	FUNC1(buffer, 2,
		 FUNC8(buffer, &gpu->mmu_context->cmdbuf_mapping)
		 + buffer->user_size - 4);

	/*
	 * Kick off the 'sync point' command by replacing the previous
	 * WAIT with a link to the address in the ring buffer.
	 */
	FUNC6(buffer, waitlink_offset,
				    VIV_FE_LINK_HEADER_OP_LINK |
				    FUNC5(dwords),
				    target);
}