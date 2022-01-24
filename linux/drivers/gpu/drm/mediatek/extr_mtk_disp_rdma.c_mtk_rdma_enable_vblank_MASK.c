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
struct mtk_disp_rdma {struct drm_crtc* crtc; } ;
struct mtk_ddp_comp {int dummy; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISP_REG_RDMA_INT_ENABLE ; 
 int /*<<< orphan*/  RDMA_FRAME_END_INT ; 
 struct mtk_disp_rdma* FUNC0 (struct mtk_ddp_comp*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_ddp_comp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mtk_ddp_comp *comp,
				   struct drm_crtc *crtc)
{
	struct mtk_disp_rdma *rdma = FUNC0(comp);

	rdma->crtc = crtc;
	FUNC1(comp, DISP_REG_RDMA_INT_ENABLE, RDMA_FRAME_END_INT,
			 RDMA_FRAME_END_INT);
}