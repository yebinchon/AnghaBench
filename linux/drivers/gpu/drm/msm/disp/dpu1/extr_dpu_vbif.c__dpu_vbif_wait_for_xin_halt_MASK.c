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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int (* get_halt_ctrl ) (struct dpu_hw_vbif*,int /*<<< orphan*/ ) ;} ;
struct dpu_hw_vbif {scalar_t__ idx; TYPE_2__ ops; TYPE_1__* cap; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_3__ {int /*<<< orphan*/  xin_halt_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 scalar_t__ VBIF_0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct dpu_hw_vbif*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct dpu_hw_vbif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct dpu_hw_vbif *vbif, u32 xin_id)
{
	ktime_t timeout;
	bool status;
	int rc;

	if (!vbif || !vbif->cap || !vbif->ops.get_halt_ctrl) {
		FUNC1("invalid arguments vbif %d\n", vbif != 0);
		return -EINVAL;
	}

	timeout = FUNC2(FUNC4(), vbif->cap->xin_halt_timeout);
	for (;;) {
		status = vbif->ops.get_halt_ctrl(vbif, xin_id);
		if (status)
			break;
		if (FUNC3(FUNC4(), timeout) > 0) {
			status = vbif->ops.get_halt_ctrl(vbif, xin_id);
			break;
		}
		FUNC7(501, 1000);
	}

	if (!status) {
		rc = -ETIMEDOUT;
		FUNC1("VBIF %d client %d not halting. TIMEDOUT.\n",
				vbif->idx - VBIF_0, xin_id);
	} else {
		rc = 0;
		FUNC0("VBIF %d client %d is halted\n",
				vbif->idx - VBIF_0, xin_id);
	}

	return rc;
}