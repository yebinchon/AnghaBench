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
struct drm_tile_group {int id; struct drm_device* dev; int /*<<< orphan*/  group_data; int /*<<< orphan*/  refcount; } ;
struct TYPE_2__ {int /*<<< orphan*/  idr_mutex; int /*<<< orphan*/  tile_idr; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,struct drm_tile_group*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_tile_group*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct drm_tile_group* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct drm_tile_group *FUNC7(struct drm_device *dev,
						  char topology[8])
{
	struct drm_tile_group *tg;
	int ret;

	tg = FUNC3(sizeof(*tg), GFP_KERNEL);
	if (!tg)
		return NULL;

	FUNC2(&tg->refcount);
	FUNC4(tg->group_data, topology, 8);
	tg->dev = dev;

	FUNC5(&dev->mode_config.idr_mutex);
	ret = FUNC0(&dev->mode_config.tile_idr, tg, 1, 0, GFP_KERNEL);
	if (ret >= 0) {
		tg->id = ret;
	} else {
		FUNC1(tg);
		tg = NULL;
	}

	FUNC6(&dev->mode_config.idr_mutex);
	return tg;
}