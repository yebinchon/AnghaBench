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
typedef  int u32 ;
struct etnaviv_cmdbuf {int user_size; } ;
struct etnaviv_gpu {scalar_t__ exec_state; int /*<<< orphan*/  lock; struct etnaviv_cmdbuf buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct etnaviv_cmdbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct etnaviv_cmdbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct etnaviv_cmdbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct etnaviv_cmdbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ETNA_PIPE_2D ; 
 scalar_t__ ETNA_PIPE_3D ; 
 int /*<<< orphan*/  SYNC_RECIPIENT_FE ; 
 int /*<<< orphan*/  SYNC_RECIPIENT_PE ; 
 int /*<<< orphan*/  VIVS_GL_FLUSH_CACHE ; 
 int VIVS_GL_FLUSH_CACHE_COLOR ; 
 int VIVS_GL_FLUSH_CACHE_DEPTH ; 
 int VIVS_GL_FLUSH_CACHE_PE2D ; 
 int VIVS_GL_FLUSH_CACHE_SHADER_L2 ; 
 int VIVS_GL_FLUSH_CACHE_TEXTURE ; 
 int VIVS_GL_FLUSH_CACHE_TEXTUREVS ; 
 int /*<<< orphan*/  VIVS_TS_FLUSH_CACHE ; 
 int VIVS_TS_FLUSH_CACHE_FLUSH ; 
 int VIV_FE_END_HEADER_OP_END ; 
 int VIV_FE_LINK_HEADER_OP_LINK ; 
 int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct etnaviv_cmdbuf*,unsigned int,int,int) ; 
 int FUNC6 (struct etnaviv_gpu*,struct etnaviv_cmdbuf*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct etnaviv_gpu *gpu)
{
	struct etnaviv_cmdbuf *buffer = &gpu->buffer;
	unsigned int waitlink_offset = buffer->user_size - 16;
	u32 link_target, flush = 0;

	FUNC7(&gpu->lock);

	if (gpu->exec_state == ETNA_PIPE_2D)
		flush = VIVS_GL_FLUSH_CACHE_PE2D;
	else if (gpu->exec_state == ETNA_PIPE_3D)
		flush = VIVS_GL_FLUSH_CACHE_DEPTH |
			VIVS_GL_FLUSH_CACHE_COLOR |
			VIVS_GL_FLUSH_CACHE_TEXTURE |
			VIVS_GL_FLUSH_CACHE_TEXTUREVS |
			VIVS_GL_FLUSH_CACHE_SHADER_L2;

	if (flush) {
		unsigned int dwords = 7;

		link_target = FUNC6(gpu, buffer, dwords);

		FUNC2(buffer, SYNC_RECIPIENT_FE, SYNC_RECIPIENT_PE);
		FUNC3(buffer, SYNC_RECIPIENT_FE, SYNC_RECIPIENT_PE);
		FUNC1(buffer, VIVS_GL_FLUSH_CACHE, flush);
		if (gpu->exec_state == ETNA_PIPE_3D)
			FUNC1(buffer, VIVS_TS_FLUSH_CACHE,
				       VIVS_TS_FLUSH_CACHE_FLUSH);
		FUNC2(buffer, SYNC_RECIPIENT_FE, SYNC_RECIPIENT_PE);
		FUNC3(buffer, SYNC_RECIPIENT_FE, SYNC_RECIPIENT_PE);
		FUNC0(buffer);

		FUNC5(buffer, waitlink_offset,
					    VIV_FE_LINK_HEADER_OP_LINK |
					    FUNC4(dwords),
					    link_target);
	} else {
		/* Replace the last link-wait with an "END" command */
		FUNC5(buffer, waitlink_offset,
					    VIV_FE_END_HEADER_OP_END, 0);
	}
}