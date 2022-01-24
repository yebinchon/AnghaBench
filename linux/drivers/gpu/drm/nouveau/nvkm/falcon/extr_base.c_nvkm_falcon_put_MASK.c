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
struct nvkm_falcon {int /*<<< orphan*/  mutex; struct nvkm_subdev const* user; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_subdev const*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

void
FUNC4(struct nvkm_falcon *falcon, const struct nvkm_subdev *user)
{
	if (FUNC3(!falcon))
		return;

	FUNC0(&falcon->mutex);
	if (falcon->user == user) {
		FUNC2(falcon->user, "released %s falcon\n", falcon->name);
		falcon->user = NULL;
	}
	FUNC1(&falcon->mutex);
}