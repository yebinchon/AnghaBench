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
struct v3d_dev {int ver; } ;

/* Variables and functions */
 int /*<<< orphan*/  V3D_GCA_CACHE_CTRL ; 
 int V3D_GCA_CACHE_CTRL_FLUSH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct v3d_dev *v3d)
{
	if (v3d->ver < 41) {
		u32 gca_ctrl = FUNC0(V3D_GCA_CACHE_CTRL);

		FUNC1(V3D_GCA_CACHE_CTRL,
			      gca_ctrl | V3D_GCA_CACHE_CTRL_FLUSH);

		if (v3d->ver < 33) {
			FUNC1(V3D_GCA_CACHE_CTRL,
				      gca_ctrl & ~V3D_GCA_CACHE_CTRL_FLUSH);
		}
	}
}