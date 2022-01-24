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
struct TYPE_5__ {int /*<<< orphan*/  x; int /*<<< orphan*/  y; } ;
struct TYPE_6__ {int* pitch; int /*<<< orphan*/  height; } ;
struct exynos_drm_ipp_buffer {int* dma_addr; TYPE_2__ rect; TYPE_1__* format; TYPE_3__ buf; } ;
struct TYPE_4__ {int* cpp; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  ROT_DST_BUF_SIZE ; 
 int /*<<< orphan*/  ROT_DST_CROP_POS ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct rot_context *rot,
				struct exynos_drm_ipp_buffer *buf)
{
	u32 val;

	/* Set buffer size configuration */
	val = FUNC3(buf->buf.height) |
	      FUNC4(buf->buf.pitch[0] / buf->format->cpp[0]);
	FUNC5(val, ROT_DST_BUF_SIZE);

	/* Set crop image position configuration */
	val = FUNC1(buf->rect.y) | FUNC0(buf->rect.x);
	FUNC5(val, ROT_DST_CROP_POS);

	/* Set buffer DMA address */
	FUNC5(buf->dma_addr[0], FUNC2(0));
	FUNC5(buf->dma_addr[1], FUNC2(1));
}