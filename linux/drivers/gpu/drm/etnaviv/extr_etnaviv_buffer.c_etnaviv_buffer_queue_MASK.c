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
struct etnaviv_iommu_context {int /*<<< orphan*/  cmdbuf_mapping; TYPE_1__* global; int /*<<< orphan*/  flush_seq; } ;
struct etnaviv_cmdbuf {int user_size; int size; unsigned int vaddr; } ;
struct etnaviv_gpu {int exec_state; unsigned int flush_seq; scalar_t__ sec_mode; struct etnaviv_iommu_context* mmu_context; int /*<<< orphan*/  lock; struct etnaviv_cmdbuf buffer; } ;
struct TYPE_2__ {scalar_t__ version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct etnaviv_cmdbuf*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct etnaviv_cmdbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct etnaviv_cmdbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct etnaviv_cmdbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct etnaviv_cmdbuf*) ; 
 int DRM_UT_DRIVER ; 
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 scalar_t__ ETNAVIV_IOMMU_V1 ; 
 scalar_t__ ETNA_PIPE_2D ; 
 scalar_t__ ETNA_SEC_KERNEL ; 
 scalar_t__ ETNA_SEC_NONE ; 
 int /*<<< orphan*/  KERN_INFO ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYNC_RECIPIENT_FE ; 
 int /*<<< orphan*/  SYNC_RECIPIENT_PE ; 
 int /*<<< orphan*/  VIVS_GL_EVENT ; 
 int FUNC6 (unsigned int) ; 
 int VIVS_GL_EVENT_FROM_PE ; 
 int /*<<< orphan*/  VIVS_GL_FLUSH_CACHE ; 
 int VIVS_GL_FLUSH_CACHE_COLOR ; 
 int VIVS_GL_FLUSH_CACHE_DEPTH ; 
 int VIVS_GL_FLUSH_CACHE_PE2D ; 
 int /*<<< orphan*/  VIVS_GL_FLUSH_MMU ; 
 int VIVS_GL_FLUSH_MMU_FLUSH_FEMMU ; 
 int VIVS_GL_FLUSH_MMU_FLUSH_PEMMU ; 
 int VIVS_GL_FLUSH_MMU_FLUSH_UNK1 ; 
 int VIVS_GL_FLUSH_MMU_FLUSH_UNK2 ; 
 int VIVS_GL_FLUSH_MMU_FLUSH_UNK4 ; 
 int /*<<< orphan*/  VIVS_MMUv2_CONFIGURATION ; 
 int VIVS_MMUv2_CONFIGURATION_FLUSH_FLUSH ; 
 int VIVS_MMUv2_CONFIGURATION_MODE_MASK ; 
 int /*<<< orphan*/  VIVS_MMUv2_PTA_CONFIG ; 
 int FUNC7 (unsigned short) ; 
 int /*<<< orphan*/  VIVS_TS_FLUSH_CACHE ; 
 int VIVS_TS_FLUSH_CACHE_FLUSH ; 
 int VIV_FE_LINK_HEADER_OP_LINK ; 
 int FUNC8 (int) ; 
 int drm_debug ; 
 int /*<<< orphan*/  FUNC9 (struct etnaviv_gpu*,struct etnaviv_cmdbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct etnaviv_cmdbuf*,unsigned int,int,int) ; 
 int FUNC11 (struct etnaviv_gpu*,struct etnaviv_cmdbuf*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct etnaviv_gpu*,struct etnaviv_cmdbuf*,int) ; 
 int FUNC13 (struct etnaviv_cmdbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct etnaviv_iommu_context*) ; 
 int /*<<< orphan*/  FUNC15 (struct etnaviv_iommu_context*) ; 
 int FUNC16 (struct etnaviv_iommu_context*) ; 
 unsigned short FUNC17 (struct etnaviv_iommu_context*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,unsigned int,int,int /*<<< orphan*/ ) ; 

void FUNC21(struct etnaviv_gpu *gpu, u32 exec_state,
	struct etnaviv_iommu_context *mmu_context, unsigned int event,
	struct etnaviv_cmdbuf *cmdbuf)
{
	struct etnaviv_cmdbuf *buffer = &gpu->buffer;
	unsigned int waitlink_offset = buffer->user_size - 16;
	u32 return_target, return_dwords;
	u32 link_target, link_dwords;
	bool switch_context = gpu->exec_state != exec_state;
	bool switch_mmu_context = gpu->mmu_context != mmu_context;
	unsigned int new_flush_seq = FUNC5(gpu->mmu_context->flush_seq);
	bool need_flush = switch_mmu_context || gpu->flush_seq != new_flush_seq;

	FUNC18(&gpu->lock);

	if (drm_debug & DRM_UT_DRIVER)
		FUNC9(gpu, buffer, 0, 0x50);

	link_target = FUNC13(cmdbuf,
					    &gpu->mmu_context->cmdbuf_mapping);
	link_dwords = cmdbuf->size / 8;

	/*
	 * If we need maintenance prior to submitting this buffer, we will
	 * need to append a mmu flush load state, followed by a new
	 * link to this buffer - a total of four additional words.
	 */
	if (need_flush || switch_context) {
		u32 target, extra_dwords;

		/* link command */
		extra_dwords = 1;

		/* flush command */
		if (need_flush) {
			if (gpu->mmu_context->global->version == ETNAVIV_IOMMU_V1)
				extra_dwords += 1;
			else
				extra_dwords += 3;
		}

		/* pipe switch commands */
		if (switch_context)
			extra_dwords += 4;

		/* PTA load command */
		if (switch_mmu_context && gpu->sec_mode == ETNA_SEC_KERNEL)
			extra_dwords += 1;

		target = FUNC11(gpu, buffer, extra_dwords);
		/*
		 * Switch MMU context if necessary. Must be done after the
		 * link target has been calculated, as the jump forward in the
		 * kernel ring still uses the last active MMU context before
		 * the switch.
		 */
		if (switch_mmu_context) {
			struct etnaviv_iommu_context *old_context = gpu->mmu_context;

			FUNC14(mmu_context);
			gpu->mmu_context = mmu_context;
			FUNC15(old_context);
		}

		if (need_flush) {
			/* Add the MMU flush */
			if (gpu->mmu_context->global->version == ETNAVIV_IOMMU_V1) {
				FUNC1(buffer, VIVS_GL_FLUSH_MMU,
					       VIVS_GL_FLUSH_MMU_FLUSH_FEMMU |
					       VIVS_GL_FLUSH_MMU_FLUSH_UNK1 |
					       VIVS_GL_FLUSH_MMU_FLUSH_UNK2 |
					       VIVS_GL_FLUSH_MMU_FLUSH_PEMMU |
					       VIVS_GL_FLUSH_MMU_FLUSH_UNK4);
			} else {
				u32 flush = VIVS_MMUv2_CONFIGURATION_MODE_MASK |
					    VIVS_MMUv2_CONFIGURATION_FLUSH_FLUSH;

				if (switch_mmu_context &&
				    gpu->sec_mode == ETNA_SEC_KERNEL) {
					unsigned short id =
						FUNC17(gpu->mmu_context);
					FUNC1(buffer,
						VIVS_MMUv2_PTA_CONFIG,
						FUNC7(id));
				}

				if (gpu->sec_mode == ETNA_SEC_NONE)
					flush |= FUNC16(gpu->mmu_context);

				FUNC1(buffer, VIVS_MMUv2_CONFIGURATION,
					       flush);
				FUNC2(buffer, SYNC_RECIPIENT_FE,
					SYNC_RECIPIENT_PE);
				FUNC3(buffer, SYNC_RECIPIENT_FE,
					SYNC_RECIPIENT_PE);
			}

			gpu->flush_seq = new_flush_seq;
		}

		if (switch_context) {
			FUNC12(gpu, buffer, exec_state);
			gpu->exec_state = exec_state;
		}

		/* And the link to the submitted buffer */
		link_target = FUNC13(cmdbuf,
					&gpu->mmu_context->cmdbuf_mapping);
		FUNC0(buffer, link_dwords, link_target);

		/* Update the link target to point to above instructions */
		link_target = target;
		link_dwords = extra_dwords;
	}

	/*
	 * Append a LINK to the submitted command buffer to return to
	 * the ring buffer.  return_target is the ring target address.
	 * We need at most 7 dwords in the return target: 2 cache flush +
	 * 2 semaphore stall + 1 event + 1 wait + 1 link.
	 */
	return_dwords = 7;
	return_target = FUNC11(gpu, buffer, return_dwords);
	FUNC0(cmdbuf, return_dwords, return_target);

	/*
	 * Append a cache flush, stall, event, wait and link pointing back to
	 * the wait command to the ring buffer.
	 */
	if (gpu->exec_state == ETNA_PIPE_2D) {
		FUNC1(buffer, VIVS_GL_FLUSH_CACHE,
				       VIVS_GL_FLUSH_CACHE_PE2D);
	} else {
		FUNC1(buffer, VIVS_GL_FLUSH_CACHE,
				       VIVS_GL_FLUSH_CACHE_DEPTH |
				       VIVS_GL_FLUSH_CACHE_COLOR);
		FUNC1(buffer, VIVS_TS_FLUSH_CACHE,
				       VIVS_TS_FLUSH_CACHE_FLUSH);
	}
	FUNC2(buffer, SYNC_RECIPIENT_FE, SYNC_RECIPIENT_PE);
	FUNC3(buffer, SYNC_RECIPIENT_FE, SYNC_RECIPIENT_PE);
	FUNC1(buffer, VIVS_GL_EVENT, FUNC6(event) |
		       VIVS_GL_EVENT_FROM_PE);
	FUNC4(buffer);
	FUNC0(buffer, 2,
		 FUNC13(buffer, &gpu->mmu_context->cmdbuf_mapping)
		 + buffer->user_size - 4);

	if (drm_debug & DRM_UT_DRIVER)
		FUNC19("stream link to 0x%08x @ 0x%08x %p\n",
			return_target,
			FUNC13(cmdbuf, &gpu->mmu_context->cmdbuf_mapping),
			cmdbuf->vaddr);

	if (drm_debug & DRM_UT_DRIVER) {
		FUNC20(KERN_INFO, "cmd ", DUMP_PREFIX_OFFSET, 16, 4,
			       cmdbuf->vaddr, cmdbuf->size, 0);

		FUNC19("link op: %p\n", buffer->vaddr + waitlink_offset);
		FUNC19("addr: 0x%08x\n", link_target);
		FUNC19("back: 0x%08x\n", return_target);
		FUNC19("event: %d\n", event);
	}

	/*
	 * Kick off the submitted command by replacing the previous
	 * WAIT with a link to the address in the ring buffer.
	 */
	FUNC10(buffer, waitlink_offset,
				    VIV_FE_LINK_HEADER_OP_LINK |
				    FUNC8(link_dwords),
				    link_target);

	if (drm_debug & DRM_UT_DRIVER)
		FUNC9(gpu, buffer, 0, 0x50);
}