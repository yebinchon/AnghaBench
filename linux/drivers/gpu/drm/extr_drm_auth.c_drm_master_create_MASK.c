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
struct drm_master {int /*<<< orphan*/  lessee_idr; int /*<<< orphan*/  leases; int /*<<< orphan*/  lessee_list; int /*<<< orphan*/  lessees; struct drm_device* dev; int /*<<< orphan*/  magic_map; int /*<<< orphan*/  refcount; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_master*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct drm_master* FUNC4 (int,int /*<<< orphan*/ ) ; 

struct drm_master *FUNC5(struct drm_device *dev)
{
	struct drm_master *master;

	master = FUNC4(sizeof(*master), GFP_KERNEL);
	if (!master)
		return NULL;

	FUNC3(&master->refcount);
	FUNC1(master);
	FUNC2(&master->magic_map);
	master->dev = dev;

	/* initialize the tree of output resource lessees */
	FUNC0(&master->lessees);
	FUNC0(&master->lessee_list);
	FUNC2(&master->leases);
	FUNC2(&master->lessee_idr);

	return master;
}