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
struct nvkm_object {int dummy; } ;
struct nvkm_client {int dummy; } ;
struct nvif_ioctl_unmap {int dummy; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_object*,char*,...) ; 
 int FUNC1 (int,void**,int /*<<< orphan*/ *,struct nvif_ioctl_unmap) ; 
 int FUNC2 (struct nvkm_object*) ; 

__attribute__((used)) static int
FUNC3(struct nvkm_client *client,
		 struct nvkm_object *object, void *data, u32 size)
{
	union {
		struct nvif_ioctl_unmap none;
	} *args = data;
	int ret = -ENOSYS;

	FUNC0(object, "unmap size %d\n", size);
	if (!(ret = FUNC1(ret, &data, &size, args->none))) {
		FUNC0(object, "unmap\n");
		ret = FUNC2(object);
	}

	return ret;
}