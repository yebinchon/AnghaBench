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
typedef  int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_therm {struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_subdev*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,int,int,int) ; 

__attribute__((used)) static int
FUNC2(struct nvkm_therm *therm, int line, bool enable)
{
	struct nvkm_subdev *subdev = &therm->subdev;
	struct nvkm_device *device = subdev->device;
	u32 mask = enable ? 0x80000000 : 0x00000000;
	if      (line == 2) FUNC1(device, 0x0010f0, 0x80000000, mask);
	else if (line == 9) FUNC1(device, 0x0015f4, 0x80000000, mask);
	else {
		FUNC0(subdev, "unknown pwm ctrl for gpio %d\n", line);
		return -ENODEV;
	}
	return 0;
}