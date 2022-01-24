#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct v3d_fence {int /*<<< orphan*/  base; int /*<<< orphan*/  seqno; } ;
struct v3d_dev {int va_width; int ver; int /*<<< orphan*/  dev; int /*<<< orphan*/  drm; TYPE_2__* tfu_job; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {int /*<<< orphan*/  irq_fence; } ;
struct TYPE_4__ {TYPE_1__ base; } ;

/* Variables and functions */
 int FUNC0 (char const* const*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  V3D_HUB_INT_CLR ; 
 int V3D_HUB_INT_MMU_CAP ; 
 int V3D_HUB_INT_MMU_PTI ; 
 int V3D_HUB_INT_MMU_WRV ; 
 int /*<<< orphan*/  V3D_HUB_INT_STS ; 
 int V3D_HUB_INT_TFUC ; 
 int /*<<< orphan*/  V3D_MMU_CTL ; 
 int V3D_MMU_CTL_CAP_EXCEEDED ; 
 int V3D_MMU_CTL_PT_INVALID ; 
 int V3D_MMU_CTL_WRITE_VIOLATION ; 
 int /*<<< orphan*/  V3D_MMU_VIO_ADDR ; 
 int /*<<< orphan*/  V3D_MMU_VIO_ID ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,int,long long,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct v3d_fence* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t
FUNC7(int irq, void *arg)
{
	struct v3d_dev *v3d = arg;
	u32 intsts;
	irqreturn_t status = IRQ_NONE;

	intsts = FUNC1(V3D_HUB_INT_STS);

	/* Acknowledge the interrupts we're handling here. */
	FUNC2(V3D_HUB_INT_CLR, intsts);

	if (intsts & V3D_HUB_INT_TFUC) {
		struct v3d_fence *fence =
			FUNC5(v3d->tfu_job->base.irq_fence);

		FUNC6(&v3d->drm, fence->seqno);
		FUNC4(&fence->base);
		status = IRQ_HANDLED;
	}

	if (intsts & (V3D_HUB_INT_MMU_WRV |
		      V3D_HUB_INT_MMU_PTI |
		      V3D_HUB_INT_MMU_CAP)) {
		u32 axi_id = FUNC1(V3D_MMU_VIO_ID);
		u64 vio_addr = ((u64)FUNC1(V3D_MMU_VIO_ADDR) <<
				(v3d->va_width - 32));
		static const char *const v3d41_axi_ids[] = {
			"L2T",
			"PTB",
			"PSE",
			"TLB",
			"CLE",
			"TFU",
			"MMU",
			"GMP",
		};
		const char *client = "?";

		FUNC2(V3D_MMU_CTL,
			  FUNC1(V3D_MMU_CTL) & (V3D_MMU_CTL_CAP_EXCEEDED |
						   V3D_MMU_CTL_PT_INVALID |
						   V3D_MMU_CTL_WRITE_VIOLATION));

		if (v3d->ver >= 41) {
			axi_id = axi_id >> 5;
			if (axi_id < FUNC0(v3d41_axi_ids))
				client = v3d41_axi_ids[axi_id];
		}

		FUNC3(v3d->dev, "MMU error from client %s (%d) at 0x%llx%s%s%s\n",
			client, axi_id, (long long)vio_addr,
			((intsts & V3D_HUB_INT_MMU_WRV) ?
			 ", write violation" : ""),
			((intsts & V3D_HUB_INT_MMU_PTI) ?
			 ", pte invalid" : ""),
			((intsts & V3D_HUB_INT_MMU_CAP) ?
			 ", cap exceeded" : ""));
		status = IRQ_HANDLED;
	}

	return status;
}