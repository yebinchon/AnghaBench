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
struct ipu_csi {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int CSI_HORI_DOWNSIZE_EN ; 
 int /*<<< orphan*/  CSI_OUT_FRM_CTRL ; 
 int CSI_VERT_DOWNSIZE_EN ; 
 int FUNC0 (struct ipu_csi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu_csi*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct ipu_csi *csi, bool horiz, bool vert)
{
	unsigned long flags;
	u32 reg;

	FUNC2(&csi->lock, flags);

	reg = FUNC0(csi, CSI_OUT_FRM_CTRL);
	reg &= ~(CSI_HORI_DOWNSIZE_EN | CSI_VERT_DOWNSIZE_EN);
	reg |= (horiz ? CSI_HORI_DOWNSIZE_EN : 0) |
	       (vert ? CSI_VERT_DOWNSIZE_EN : 0);
	FUNC1(csi, reg, CSI_OUT_FRM_CTRL);

	FUNC3(&csi->lock, flags);
}