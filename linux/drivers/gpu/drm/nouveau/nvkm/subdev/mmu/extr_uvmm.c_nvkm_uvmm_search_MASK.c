#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  void nvkm_vmm ;
struct nvkm_object {int dummy; } ;
struct nvkm_client {int dummy; } ;
struct TYPE_3__ {void* vmm; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvkm_object*) ; 
 struct nvkm_object* FUNC1 (struct nvkm_client*,int /*<<< orphan*/ ,TYPE_1__* (*) (struct nvkm_object*)) ; 
 TYPE_1__* FUNC2 (struct nvkm_object*) ; 

struct nvkm_vmm *
FUNC3(struct nvkm_client *client, u64 handle)
{
	struct nvkm_object *object;

	object = FUNC1(client, handle, &nvkm_uvmm);
	if (FUNC0(object))
		return (void *)object;

	return FUNC2(object)->vmm;
}