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
struct nvkm_pm_func {int dummy; } ;
struct nvkm_pm {int /*<<< orphan*/  engine; int /*<<< orphan*/  sources; int /*<<< orphan*/  domains; struct nvkm_pm_func const* func; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct nvkm_device*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvkm_pm ; 

int
FUNC2(const struct nvkm_pm_func *func, struct nvkm_device *device,
	     int index, struct nvkm_pm *pm)
{
	pm->func = func;
	FUNC0(&pm->domains);
	FUNC0(&pm->sources);
	return FUNC1(&nvkm_pm, device, index, true, &pm->engine);
}