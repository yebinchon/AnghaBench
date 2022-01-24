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
struct sti_hqvdp {int /*<<< orphan*/  dev; struct drm_device* drm_dev; } ;
struct drm_plane {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  STI_HQVDP_0 ; 
 struct sti_hqvdp* FUNC2 (struct device*) ; 
 struct drm_plane* FUNC3 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct device *master, void *data)
{
	struct sti_hqvdp *hqvdp = FUNC2(dev);
	struct drm_device *drm_dev = data;
	struct drm_plane *plane;

	FUNC0("\n");

	hqvdp->drm_dev = drm_dev;

	/* Create HQVDP plane once xp70 is initialized */
	plane = FUNC3(drm_dev, hqvdp->dev, STI_HQVDP_0);
	if (!plane)
		FUNC1("Can't create HQVDP plane\n");

	return 0;
}