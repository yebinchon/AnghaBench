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
struct venc_device {int /*<<< orphan*/  venc_lock; } ;
struct omap_dss_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct venc_device* FUNC1 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct venc_device*) ; 

__attribute__((used)) static void FUNC5(struct omap_dss_device *dssdev)
{
	struct venc_device *venc = FUNC1(dssdev);

	FUNC0("venc_display_disable\n");

	FUNC2(&venc->venc_lock);

	FUNC4(venc);

	FUNC3(&venc->venc_lock);
}