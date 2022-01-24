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
typedef  int /*<<< orphan*/  u32 ;
struct gsc_context {int dummy; } ;
struct exynos_drm_ipp_buffer {int /*<<< orphan*/ * dma_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gsc_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct gsc_context *ctx, u32 buf_id,
			    struct exynos_drm_ipp_buffer *buf)
{
	/* address register set */
	FUNC4(buf->dma_addr[0], FUNC2(buf_id));
	FUNC4(buf->dma_addr[1], FUNC0(buf_id));
	FUNC4(buf->dma_addr[2], FUNC1(buf_id));

	FUNC3(ctx, buf_id, true);
}