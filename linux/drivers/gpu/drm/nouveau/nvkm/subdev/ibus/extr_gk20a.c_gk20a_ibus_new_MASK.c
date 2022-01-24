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
struct nvkm_subdev {int dummy; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  gk20a_ibus ; 
 struct nvkm_subdev* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nvkm_device*,int,struct nvkm_subdev*) ; 

int
FUNC2(struct nvkm_device *device, int index,
	       struct nvkm_subdev **pibus)
{
	struct nvkm_subdev *ibus;
	if (!(ibus = *pibus = FUNC0(sizeof(*ibus), GFP_KERNEL)))
		return -ENOMEM;
	FUNC1(&gk20a_ibus, device, index, ibus);
	return 0;
}