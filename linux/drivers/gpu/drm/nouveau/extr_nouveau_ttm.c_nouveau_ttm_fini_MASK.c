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
struct nvkm_device {TYPE_1__* func; } ;
struct TYPE_6__ {scalar_t__ mtrr; int /*<<< orphan*/  bdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  device; } ;
struct nouveau_drm {TYPE_3__ ttm; TYPE_2__ client; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* resource_size ) (struct nvkm_device*,int) ;int /*<<< orphan*/  (* resource_addr ) (struct nvkm_device*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  TTM_PL_TT ; 
 int /*<<< orphan*/  TTM_PL_VRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct nvkm_device* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct nouveau_drm *drm)
{
	struct nvkm_device *device = FUNC2(&drm->client.device);

	FUNC5(&drm->ttm.bdev, TTM_PL_VRAM);
	FUNC5(&drm->ttm.bdev, TTM_PL_TT);

	FUNC6(&drm->ttm.bdev);

	FUNC1(drm->ttm.mtrr);
	drm->ttm.mtrr = 0;
	FUNC0(device->func->resource_addr(device, 1),
				device->func->resource_size(device, 1));

}