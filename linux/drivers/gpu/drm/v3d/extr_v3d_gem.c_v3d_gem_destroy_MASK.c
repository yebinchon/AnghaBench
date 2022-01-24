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
struct v3d_dev {int /*<<< orphan*/  pt_paddr; scalar_t__ pt; int /*<<< orphan*/  dev; int /*<<< orphan*/  mm; int /*<<< orphan*/  render_job; int /*<<< orphan*/  bin_job; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct v3d_dev* FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct v3d_dev*) ; 

void
FUNC5(struct drm_device *dev)
{
	struct v3d_dev *v3d = FUNC3(dev);

	FUNC4(v3d);

	/* Waiting for jobs to finish would need to be done before
	 * unregistering V3D.
	 */
	FUNC0(v3d->bin_job);
	FUNC0(v3d->render_job);

	FUNC2(&v3d->mm);

	FUNC1(v3d->dev, 4096 * 1024, (void *)v3d->pt, v3d->pt_paddr);
}