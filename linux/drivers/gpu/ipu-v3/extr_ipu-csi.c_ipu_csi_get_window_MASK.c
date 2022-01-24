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
struct v4l2_rect {int width; int height; int left; int top; } ;
struct ipu_csi {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSI_ACT_FRM_SIZE ; 
 int CSI_HSC_MASK ; 
 int CSI_HSC_SHIFT ; 
 int /*<<< orphan*/  CSI_OUT_FRM_CTRL ; 
 int CSI_VSC_MASK ; 
 int CSI_VSC_SHIFT ; 
 int FUNC0 (struct ipu_csi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct ipu_csi *csi, struct v4l2_rect *w)
{
	unsigned long flags;
	u32 reg;

	FUNC1(&csi->lock, flags);

	reg = FUNC0(csi, CSI_ACT_FRM_SIZE);
	w->width = (reg & 0xFFFF) + 1;
	w->height = (reg >> 16 & 0xFFFF) + 1;

	reg = FUNC0(csi, CSI_OUT_FRM_CTRL);
	w->left = (reg & CSI_HSC_MASK) >> CSI_HSC_SHIFT;
	w->top = (reg & CSI_VSC_MASK) >> CSI_VSC_SHIFT;

	FUNC2(&csi->lock, flags);
}