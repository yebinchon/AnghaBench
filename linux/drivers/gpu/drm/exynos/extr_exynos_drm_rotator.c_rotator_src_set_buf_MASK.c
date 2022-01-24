#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct rot_context {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  w; int /*<<< orphan*/  h; int /*<<< orphan*/  x; int /*<<< orphan*/  y; } ;
struct TYPE_4__ {int* pitch; int /*<<< orphan*/  height; } ;
struct exynos_drm_ipp_buffer {int* dma_addr; TYPE_3__ rect; TYPE_2__* format; TYPE_1__ buf; } ;
struct TYPE_5__ {int* cpp; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  ROT_SRC_BUF_SIZE ; 
 int /*<<< orphan*/  ROT_SRC_CROP_POS ; 
 int /*<<< orphan*/  ROT_SRC_CROP_SIZE ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct rot_context *rot,
				struct exynos_drm_ipp_buffer *buf)
{
	u32 val;

	/* Set buffer size configuration */
	val = FUNC2(buf->buf.height) |
	      FUNC3(buf->buf.pitch[0] / buf->format->cpp[0]);
	FUNC7(val, ROT_SRC_BUF_SIZE);

	/* Set crop image position configuration */
	val = FUNC1(buf->rect.y) | FUNC0(buf->rect.x);
	FUNC7(val, ROT_SRC_CROP_POS);
	val = FUNC5(buf->rect.h) |
	      FUNC6(buf->rect.w);
	FUNC7(val, ROT_SRC_CROP_SIZE);

	/* Set buffer DMA address */
	FUNC7(buf->dma_addr[0], FUNC4(0));
	FUNC7(buf->dma_addr[1], FUNC4(1));
}