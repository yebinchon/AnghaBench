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
struct nvkm_disp {int dummy; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  nv04_disp ; 
 int FUNC0 (struct nvkm_disp*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct nvkm_device*,int,struct nvkm_disp**) ; 

int
FUNC2(struct nvkm_device *device, int index, struct nvkm_disp **pdisp)
{
	int ret, i;

	ret = FUNC1(&nv04_disp, device, index, pdisp);
	if (ret)
		return ret;

	for (i = 0; i < 2; i++) {
		ret = FUNC0(*pdisp, i);
		if (ret)
			return ret;
	}

	return 0;
}