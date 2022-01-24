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
struct nvkm_i2c_bus {int dummy; } ;
struct nvkm_i2c {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct nouveau_drm {TYPE_1__ client; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 struct nouveau_drm* FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  nv04_tv_encoder_info ; 
 struct nvkm_i2c_bus* FUNC1 (struct nvkm_i2c*,int) ; 
 int FUNC2 (struct nvkm_i2c_bus*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nvkm_i2c* FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct drm_device *dev, int i2c_index)
{
	struct nouveau_drm *drm = FUNC0(dev);
	struct nvkm_i2c *i2c = FUNC3(&drm->client.device);
	struct nvkm_i2c_bus *bus = FUNC1(i2c, i2c_index);
	if (bus) {
		return FUNC2(bus, "TV encoder",
					  nv04_tv_encoder_info,
					  NULL, NULL);
	}
	return -ENODEV;
}