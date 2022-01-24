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
struct v3d_dev {int /*<<< orphan*/  cache_clean_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  V3D_CTL_L2TCACTL ; 
 int /*<<< orphan*/  V3D_L2TCACTL_FLM ; 
 int /*<<< orphan*/  V3D_L2TCACTL_FLM_FLUSH ; 
 int V3D_L2TCACTL_L2TFLS ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct v3d_dev *v3d, int core)
{
	/* While there is a busy bit (V3D_L2TCACTL_L2TFLS), we don't
	 * need to wait for completion before dispatching the job --
	 * L2T accesses will be stalled until the flush has completed.
	 * However, we do need to make sure we don't try to trigger a
	 * new flush while the L2_CLEAN queue is trying to
	 * synchronously clean after a job.
	 */
	FUNC2(&v3d->cache_clean_lock);
	FUNC0(core, V3D_CTL_L2TCACTL,
		       V3D_L2TCACTL_L2TFLS |
		       FUNC1(V3D_L2TCACTL_FLM_FLUSH, V3D_L2TCACTL_FLM));
	FUNC3(&v3d->cache_clean_lock);
}