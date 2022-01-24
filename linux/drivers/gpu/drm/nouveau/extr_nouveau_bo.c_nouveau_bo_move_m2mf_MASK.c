#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ttm_mem_reg {int dummy; } ;
struct ttm_buffer_object {int /*<<< orphan*/  mem; int /*<<< orphan*/  bdev; } ;
struct nouveau_fence {int /*<<< orphan*/  base; } ;
struct TYPE_10__ {int (* move ) (struct nouveau_channel*,struct ttm_buffer_object*,int /*<<< orphan*/ *,struct ttm_mem_reg*) ;struct nouveau_channel* chan; } ;
struct TYPE_7__ {scalar_t__ family; } ;
struct TYPE_8__ {TYPE_2__ info; } ;
struct TYPE_9__ {TYPE_3__ device; } ;
struct nouveau_drm {TYPE_5__ ttm; TYPE_4__ client; } ;
struct nouveau_cli {int /*<<< orphan*/  mutex; } ;
struct TYPE_6__ {scalar_t__ client; } ;
struct nouveau_channel {TYPE_1__ user; } ;

/* Variables and functions */
 scalar_t__ NV_DEVICE_INFO_V0_TESLA ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nouveau_drm* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_buffer_object*) ; 
 int FUNC4 (struct nouveau_drm*,struct ttm_buffer_object*,struct ttm_mem_reg*) ; 
 int FUNC5 (struct nouveau_channel*,int,struct nouveau_fence**) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct nouveau_channel*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_fence**) ; 
 int FUNC8 (struct nouveau_channel*,struct ttm_buffer_object*,int /*<<< orphan*/ *,struct ttm_mem_reg*) ; 
 int FUNC9 (struct ttm_buffer_object*,int /*<<< orphan*/ *,int,struct ttm_mem_reg*) ; 

__attribute__((used)) static int
FUNC10(struct ttm_buffer_object *bo, int evict, bool intr,
		     bool no_wait_gpu, struct ttm_mem_reg *new_reg)
{
	struct nouveau_drm *drm = FUNC2(bo->bdev);
	struct nouveau_channel *chan = drm->ttm.chan;
	struct nouveau_cli *cli = (void *)chan->user.client;
	struct nouveau_fence *fence;
	int ret;

	/* create temporary vmas for the transfer and attach them to the
	 * old nvkm_mem node, these will get cleaned up after ttm has
	 * destroyed the ttm_mem_reg
	 */
	if (drm->client.device.info.family >= NV_DEVICE_INFO_V0_TESLA) {
		ret = FUNC4(drm, bo, new_reg);
		if (ret)
			return ret;
	}

	FUNC0(&cli->mutex, SINGLE_DEPTH_NESTING);
	ret = FUNC6(FUNC3(bo), chan, true, intr);
	if (ret == 0) {
		ret = drm->ttm.move(chan, bo, &bo->mem, new_reg);
		if (ret == 0) {
			ret = FUNC5(chan, false, &fence);
			if (ret == 0) {
				ret = FUNC9(bo,
								&fence->base,
								evict,
								new_reg);
				FUNC7(&fence);
			}
		}
	}
	FUNC1(&cli->mutex);
	return ret;
}