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
struct nvkm_subdev {size_t index; } ;
struct nvkm_falcon {int /*<<< orphan*/  mutex; struct nvkm_subdev const* user; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_subdev const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_subdev const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nvkm_subdev_name ; 

int
FUNC4(struct nvkm_falcon *falcon, const struct nvkm_subdev *user)
{
	FUNC0(&falcon->mutex);
	if (falcon->user) {
		FUNC3(user, "%s falcon already acquired by %s!\n",
			   falcon->name, nvkm_subdev_name[falcon->user->index]);
		FUNC1(&falcon->mutex);
		return -EBUSY;
	}

	FUNC2(user, "acquired %s falcon\n", falcon->name);
	falcon->user = user;
	FUNC1(&falcon->mutex);
	return 0;
}