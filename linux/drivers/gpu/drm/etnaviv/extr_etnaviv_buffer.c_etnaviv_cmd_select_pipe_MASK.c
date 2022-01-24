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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct etnaviv_gpu {scalar_t__ exec_state; int /*<<< orphan*/  lock; } ;
struct etnaviv_cmdbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct etnaviv_cmdbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct etnaviv_cmdbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct etnaviv_cmdbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ETNA_PIPE_2D ; 
 scalar_t__ ETNA_PIPE_3D ; 
 int /*<<< orphan*/  SYNC_RECIPIENT_FE ; 
 int /*<<< orphan*/  SYNC_RECIPIENT_PE ; 
 int /*<<< orphan*/  VIVS_GL_FLUSH_CACHE ; 
 int VIVS_GL_FLUSH_CACHE_COLOR ; 
 int VIVS_GL_FLUSH_CACHE_DEPTH ; 
 int VIVS_GL_FLUSH_CACHE_PE2D ; 
 int /*<<< orphan*/  VIVS_GL_PIPE_SELECT ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct etnaviv_gpu *gpu,
	struct etnaviv_cmdbuf *buffer, u8 pipe)
{
	u32 flush = 0;

	FUNC4(&gpu->lock);

	/*
	 * This assumes that if we're switching to 2D, we're switching
	 * away from 3D, and vice versa.  Hence, if we're switching to
	 * the 2D core, we need to flush the 3D depth and color caches,
	 * otherwise we need to flush the 2D pixel engine cache.
	 */
	if (gpu->exec_state == ETNA_PIPE_2D)
		flush = VIVS_GL_FLUSH_CACHE_PE2D;
	else if (gpu->exec_state == ETNA_PIPE_3D)
		flush = VIVS_GL_FLUSH_CACHE_DEPTH | VIVS_GL_FLUSH_CACHE_COLOR;

	FUNC0(buffer, VIVS_GL_FLUSH_CACHE, flush);
	FUNC1(buffer, SYNC_RECIPIENT_FE, SYNC_RECIPIENT_PE);
	FUNC2(buffer, SYNC_RECIPIENT_FE, SYNC_RECIPIENT_PE);

	FUNC0(buffer, VIVS_GL_PIPE_SELECT,
		       FUNC3(pipe));
}