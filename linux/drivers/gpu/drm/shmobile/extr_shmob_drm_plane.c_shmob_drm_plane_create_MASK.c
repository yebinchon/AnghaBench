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
struct shmob_drm_plane {unsigned int index; int alpha; int /*<<< orphan*/  plane; } ;
struct shmob_drm_device {int /*<<< orphan*/  ddev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct shmob_drm_plane* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  formats ; 
 int /*<<< orphan*/  shmob_drm_plane_funcs ; 

int FUNC3(struct shmob_drm_device *sdev, unsigned int index)
{
	struct shmob_drm_plane *splane;
	int ret;

	splane = FUNC1(sdev->dev, sizeof(*splane), GFP_KERNEL);
	if (splane == NULL)
		return -ENOMEM;

	splane->index = index;
	splane->alpha = 255;

	ret = FUNC2(sdev->ddev, &splane->plane, 1,
			     &shmob_drm_plane_funcs, formats,
			     FUNC0(formats), false);

	return ret;
}