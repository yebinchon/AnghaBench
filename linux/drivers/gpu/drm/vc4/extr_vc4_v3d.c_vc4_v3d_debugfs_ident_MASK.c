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
typedef  int uint32_t ;
struct vc4_dev {int dummy; } ;
struct seq_file {scalar_t__ private; } ;
struct drm_info_node {TYPE_1__* minor; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  V3D_IDENT1 ; 
 int /*<<< orphan*/  V3D_IDENT1_NSEM ; 
 int /*<<< orphan*/  V3D_IDENT1_NSLC ; 
 int /*<<< orphan*/  V3D_IDENT1_QUPS ; 
 int /*<<< orphan*/  V3D_IDENT1_REV ; 
 int /*<<< orphan*/  V3D_IDENT1_TUPS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int) ; 
 struct vc4_dev* FUNC3 (struct drm_device*) ; 
 int FUNC4 (struct vc4_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct vc4_dev*) ; 

__attribute__((used)) static int FUNC6(struct seq_file *m, void *unused)
{
	struct drm_info_node *node = (struct drm_info_node *)m->private;
	struct drm_device *dev = node->minor->dev;
	struct vc4_dev *vc4 = FUNC3(dev);
	int ret = FUNC4(vc4);

	if (ret == 0) {
		uint32_t ident1 = FUNC0(V3D_IDENT1);
		uint32_t nslc = FUNC1(ident1, V3D_IDENT1_NSLC);
		uint32_t tups = FUNC1(ident1, V3D_IDENT1_TUPS);
		uint32_t qups = FUNC1(ident1, V3D_IDENT1_QUPS);

		FUNC2(m, "Revision:   %d\n",
			   FUNC1(ident1, V3D_IDENT1_REV));
		FUNC2(m, "Slices:     %d\n", nslc);
		FUNC2(m, "TMUs:       %d\n", nslc * tups);
		FUNC2(m, "QPUs:       %d\n", nslc * qups);
		FUNC2(m, "Semaphores: %d\n",
			   FUNC1(ident1, V3D_IDENT1_NSEM));
		FUNC5(vc4);
	}

	return 0;
}