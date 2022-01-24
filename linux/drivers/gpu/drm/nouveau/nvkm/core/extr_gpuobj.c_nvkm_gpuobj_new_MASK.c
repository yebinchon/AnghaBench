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
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_gpuobj {int dummy; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nvkm_gpuobj* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nvkm_device*,int /*<<< orphan*/ ,int,int,struct nvkm_gpuobj*,struct nvkm_gpuobj*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_gpuobj**) ; 

int
FUNC3(struct nvkm_device *device, u32 size, int align, bool zero,
		struct nvkm_gpuobj *parent, struct nvkm_gpuobj **pgpuobj)
{
	struct nvkm_gpuobj *gpuobj;
	int ret;

	if (!(gpuobj = *pgpuobj = FUNC0(sizeof(*gpuobj), GFP_KERNEL)))
		return -ENOMEM;

	ret = FUNC1(device, size, align, zero, parent, gpuobj);
	if (ret)
		FUNC2(pgpuobj);
	return ret;
}