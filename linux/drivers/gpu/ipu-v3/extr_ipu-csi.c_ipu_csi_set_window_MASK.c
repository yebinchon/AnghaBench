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
struct v4l2_rect {int width; int height; int top; int left; } ;
struct ipu_csi {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSI_ACT_FRM_SIZE ; 
 int CSI_HSC_MASK ; 
 int CSI_HSC_SHIFT ; 
 int /*<<< orphan*/  CSI_OUT_FRM_CTRL ; 
 int CSI_VSC_MASK ; 
 int CSI_VSC_SHIFT ; 
 int FUNC0 (struct ipu_csi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu_csi*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct ipu_csi *csi, struct v4l2_rect *w)
{
	unsigned long flags;
	u32 reg;

	FUNC2(&csi->lock, flags);

	FUNC1(csi, (w->width - 1) | ((w->height - 1) << 16),
			  CSI_ACT_FRM_SIZE);

	reg = FUNC0(csi, CSI_OUT_FRM_CTRL);
	reg &= ~(CSI_HSC_MASK | CSI_VSC_MASK);
	reg |= ((w->top << CSI_VSC_SHIFT) | (w->left << CSI_HSC_SHIFT));
	FUNC1(csi, reg, CSI_OUT_FRM_CTRL);

	FUNC3(&csi->lock, flags);
}