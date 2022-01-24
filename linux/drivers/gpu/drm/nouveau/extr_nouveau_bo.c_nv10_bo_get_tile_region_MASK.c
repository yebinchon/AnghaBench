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
struct nouveau_drm_tile {int used; int /*<<< orphan*/  fence; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct nouveau_drm_tile* reg; } ;
struct nouveau_drm {TYPE_1__ tile; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct nouveau_drm* FUNC0 (struct drm_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nouveau_drm_tile *
FUNC4(struct drm_device *dev, int i)
{
	struct nouveau_drm *drm = FUNC0(dev);
	struct nouveau_drm_tile *tile = &drm->tile.reg[i];

	FUNC2(&drm->tile.lock);

	if (!tile->used &&
	    (!tile->fence || FUNC1(tile->fence)))
		tile->used = true;
	else
		tile = NULL;

	FUNC3(&drm->tile.lock);
	return tile;
}