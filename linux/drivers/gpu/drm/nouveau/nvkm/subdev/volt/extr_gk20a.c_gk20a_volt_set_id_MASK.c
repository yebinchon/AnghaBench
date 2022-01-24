#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct nvkm_volt {int dummy; } ;
struct nvkm_subdev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* vid; struct nvkm_subdev subdev; } ;
struct gk20a_volt {TYPE_2__ base; int /*<<< orphan*/  vdd; } ;
struct TYPE_3__ {int uv; int /*<<< orphan*/  vid; } ;

/* Variables and functions */
 struct gk20a_volt* FUNC0 (struct nvkm_volt*) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_subdev*,char*,int,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct nvkm_volt *base, u8 id, int condition)
{
	struct gk20a_volt *volt = FUNC0(base);
	struct nvkm_subdev *subdev = &volt->base.subdev;
	int prev_uv = FUNC3(volt->vdd);
	int target_uv = volt->base.vid[id].uv;
	int ret;

	FUNC2(subdev, "prev=%d, target=%d, condition=%d\n",
		   prev_uv, target_uv, condition);
	if (!condition ||
		(condition < 0 && target_uv < prev_uv) ||
		(condition > 0 && target_uv > prev_uv)) {
		ret = FUNC1(&volt->base, volt->base.vid[id].vid);
	} else {
		ret = 0;
	}

	return ret;
}