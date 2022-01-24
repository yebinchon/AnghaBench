#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_fb_tile {scalar_t__ pitch; } ;
struct TYPE_5__ {struct nvkm_fb_tile* region; } ;
struct nvkm_fb {TYPE_2__ tile; } ;
struct nouveau_drm_tile {int /*<<< orphan*/  fence; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct TYPE_6__ {struct nouveau_drm_tile* reg; } ;
struct nouveau_drm {TYPE_1__ client; TYPE_3__ tile; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct nouveau_drm* FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_fb*,int,struct nvkm_fb_tile*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_fb*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nvkm_fb_tile*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_fb*,int,struct nvkm_fb_tile*) ; 
 struct nvkm_fb* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct drm_device *dev, struct nouveau_drm_tile *reg,
			   u32 addr, u32 size, u32 pitch, u32 flags)
{
	struct nouveau_drm *drm = FUNC0(dev);
	int i = reg - drm->tile.reg;
	struct nvkm_fb *fb = FUNC5(&drm->client.device);
	struct nvkm_fb_tile *tile = &fb->tile.region[i];

	FUNC1(&reg->fence);

	if (tile->pitch)
		FUNC2(fb, i, tile);

	if (pitch)
		FUNC3(fb, i, addr, size, pitch, flags, tile);

	FUNC4(fb, i, tile);
}