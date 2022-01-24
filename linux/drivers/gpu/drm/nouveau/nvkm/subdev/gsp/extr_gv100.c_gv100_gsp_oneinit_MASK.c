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
struct nvkm_subdev {int /*<<< orphan*/  index; int /*<<< orphan*/  device; } ;
struct nvkm_gsp {int /*<<< orphan*/  falcon; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct nvkm_subdev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nvkm_gsp* FUNC1 (struct nvkm_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct nvkm_subdev *subdev)
{
	struct nvkm_gsp *gsp = FUNC1(subdev);

	gsp->addr = FUNC2(subdev->device, subdev->index);
	if (!gsp->addr)
		return -EINVAL;

	return FUNC0(subdev, "GSP", gsp->addr, &gsp->falcon);
}