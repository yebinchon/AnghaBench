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
struct nvkm_nvdec {int /*<<< orphan*/  engine; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nvkm_nvdec* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct nvkm_device*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvkm_nvdec ; 

int
FUNC2(struct nvkm_device *device, int index,
		struct nvkm_nvdec **pnvdec)
{
	struct nvkm_nvdec *nvdec;

	if (!(nvdec = *pnvdec = FUNC0(sizeof(*nvdec), GFP_KERNEL)))
		return -ENOMEM;

	return FUNC1(&nvkm_nvdec, device, index, true,
				&nvdec->engine);
}