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
struct nvkm_volt {int dummy; } ;
struct nvkm_subdev {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_subdev*,char*,...) ; 
 struct nvkm_volt* FUNC1 (struct nvkm_subdev*) ; 
 int FUNC2 (struct nvkm_volt*) ; 

__attribute__((used)) static int
FUNC3(struct nvkm_subdev *subdev)
{
	struct nvkm_volt *volt = FUNC1(subdev);
	int ret = FUNC2(volt);
	if (ret < 0) {
		if (ret != -ENODEV)
			FUNC0(subdev, "current voltage unknown\n");
		return 0;
	}
	FUNC0(subdev, "current voltage: %duv\n", ret);
	return 0;
}