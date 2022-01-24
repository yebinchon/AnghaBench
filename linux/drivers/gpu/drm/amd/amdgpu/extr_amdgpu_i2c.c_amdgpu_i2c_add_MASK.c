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
struct drm_device {int dummy; } ;
struct amdgpu_i2c_bus_rec {int dummy; } ;
struct amdgpu_device {scalar_t__* i2c_bus; struct drm_device* ddev; } ;

/* Variables and functions */
 int AMDGPU_MAX_I2C_BUS ; 
 scalar_t__ FUNC0 (struct drm_device*,struct amdgpu_i2c_bus_rec const*,char const*) ; 

void FUNC1(struct amdgpu_device *adev,
		    const struct amdgpu_i2c_bus_rec *rec,
		    const char *name)
{
	struct drm_device *dev = adev->ddev;
	int i;

	for (i = 0; i < AMDGPU_MAX_I2C_BUS; i++) {
		if (!adev->i2c_bus[i]) {
			adev->i2c_bus[i] = FUNC0(dev, rec, name);
			return;
		}
	}
}