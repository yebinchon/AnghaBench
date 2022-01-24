#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct v3d_dev {int /*<<< orphan*/  dev; } ;
struct seq_file {scalar_t__ private; } ;
struct drm_info_node {TYPE_1__* minor; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct drm_device* dev; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V3D_CTL_IDENT0 ; 
 int /*<<< orphan*/  V3D_CTL_IDENT1 ; 
 int /*<<< orphan*/  V3D_CTL_IDENT2 ; 
 int /*<<< orphan*/  V3D_CTL_MISCCFG ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V3D_HUB_IDENT0 ; 
 int /*<<< orphan*/  V3D_HUB_IDENT1 ; 
 int /*<<< orphan*/  V3D_HUB_IDENT1_NCORES ; 
 int /*<<< orphan*/  V3D_HUB_IDENT1_REV ; 
 int /*<<< orphan*/  V3D_HUB_IDENT1_TVER ; 
 int V3D_HUB_IDENT1_WITH_L3C ; 
 int V3D_HUB_IDENT1_WITH_MSO ; 
 int V3D_HUB_IDENT1_WITH_TFU ; 
 int V3D_HUB_IDENT1_WITH_TSY ; 
 int /*<<< orphan*/  V3D_HUB_IDENT2 ; 
 int /*<<< orphan*/  V3D_HUB_IDENT2_L3C_NKB ; 
 int V3D_HUB_IDENT2_WITH_MMU ; 
 int /*<<< orphan*/  V3D_HUB_IDENT3 ; 
 int /*<<< orphan*/  V3D_HUB_IDENT3_IPIDX ; 
 int /*<<< orphan*/  V3D_HUB_IDENT3_IPREV ; 
 int /*<<< orphan*/  V3D_IDENT0_VER ; 
 int /*<<< orphan*/  V3D_IDENT1_NSEM ; 
 int /*<<< orphan*/  V3D_IDENT1_NSLC ; 
 int /*<<< orphan*/  V3D_IDENT1_NTMU ; 
 int /*<<< orphan*/  V3D_IDENT1_QUPS ; 
 int /*<<< orphan*/  V3D_IDENT1_REV ; 
 int V3D_IDENT2_BCG_INT ; 
 int V3D_MISCCFG_OVRTMUOUT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*,...) ; 
 struct v3d_dev* FUNC7 (struct drm_device*) ; 

__attribute__((used)) static int FUNC8(struct seq_file *m, void *unused)
{
	struct drm_info_node *node = (struct drm_info_node *)m->private;
	struct drm_device *dev = node->minor->dev;
	struct v3d_dev *v3d = FUNC7(dev);
	u32 ident0, ident1, ident2, ident3, cores;
	int ret, core;

	ret = FUNC3(v3d->dev);
	if (ret < 0)
		return ret;

	ident0 = FUNC2(V3D_HUB_IDENT0);
	ident1 = FUNC2(V3D_HUB_IDENT1);
	ident2 = FUNC2(V3D_HUB_IDENT2);
	ident3 = FUNC2(V3D_HUB_IDENT3);
	cores = FUNC1(ident1, V3D_HUB_IDENT1_NCORES);

	FUNC6(m, "Revision:   %d.%d.%d.%d\n",
		   FUNC1(ident1, V3D_HUB_IDENT1_TVER),
		   FUNC1(ident1, V3D_HUB_IDENT1_REV),
		   FUNC1(ident3, V3D_HUB_IDENT3_IPREV),
		   FUNC1(ident3, V3D_HUB_IDENT3_IPIDX));
	FUNC6(m, "MMU:        %s\n",
		   (ident2 & V3D_HUB_IDENT2_WITH_MMU) ? "yes" : "no");
	FUNC6(m, "TFU:        %s\n",
		   (ident1 & V3D_HUB_IDENT1_WITH_TFU) ? "yes" : "no");
	FUNC6(m, "TSY:        %s\n",
		   (ident1 & V3D_HUB_IDENT1_WITH_TSY) ? "yes" : "no");
	FUNC6(m, "MSO:        %s\n",
		   (ident1 & V3D_HUB_IDENT1_WITH_MSO) ? "yes" : "no");
	FUNC6(m, "L3C:        %s (%dkb)\n",
		   (ident1 & V3D_HUB_IDENT1_WITH_L3C) ? "yes" : "no",
		   FUNC1(ident2, V3D_HUB_IDENT2_L3C_NKB));

	for (core = 0; core < cores; core++) {
		u32 misccfg;
		u32 nslc, ntmu, qups;

		ident0 = FUNC0(core, V3D_CTL_IDENT0);
		ident1 = FUNC0(core, V3D_CTL_IDENT1);
		ident2 = FUNC0(core, V3D_CTL_IDENT2);
		misccfg = FUNC0(core, V3D_CTL_MISCCFG);

		nslc = FUNC1(ident1, V3D_IDENT1_NSLC);
		ntmu = FUNC1(ident1, V3D_IDENT1_NTMU);
		qups = FUNC1(ident1, V3D_IDENT1_QUPS);

		FUNC6(m, "Core %d:\n", core);
		FUNC6(m, "  Revision:     %d.%d\n",
			   FUNC1(ident0, V3D_IDENT0_VER),
			   FUNC1(ident1, V3D_IDENT1_REV));
		FUNC6(m, "  Slices:       %d\n", nslc);
		FUNC6(m, "  TMUs:         %d\n", nslc * ntmu);
		FUNC6(m, "  QPUs:         %d\n", nslc * qups);
		FUNC6(m, "  Semaphores:   %d\n",
			   FUNC1(ident1, V3D_IDENT1_NSEM));
		FUNC6(m, "  BCG int:      %d\n",
			   (ident2 & V3D_IDENT2_BCG_INT) != 0);
		FUNC6(m, "  Override TMU: %d\n",
			   (misccfg & V3D_MISCCFG_OVRTMUOUT) != 0);
	}

	FUNC4(v3d->dev);
	FUNC5(v3d->dev);

	return 0;
}