#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_msgqueue {int dummy; } ;
struct nvkm_falcon {TYPE_1__* owner; } ;
struct nvkm_device {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  index; struct nvkm_device* device; } ;

/* Variables and functions */
 int NVKM_MSGQUEUE_CMDLINE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_falcon*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_falcon*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_falcon*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_msgqueue*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_msgqueue*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct nvkm_msgqueue *queue,
			 struct nvkm_falcon *falcon, u32 addr_args)
{
	struct nvkm_device *device = falcon->owner->device;
	u8 buf[NVKM_MSGQUEUE_CMDLINE_SIZE];

	FUNC0(buf, 0, sizeof(buf));
	FUNC6(queue, buf);
	FUNC1(falcon, buf, addr_args, sizeof(buf), 0);
	/* rearm the queue so it will wait for the init message */
	FUNC5(queue);

	/* Enable interrupts */
	FUNC3(falcon, 0x10, 0xff);
	FUNC4(device, falcon->owner->index, true);

	/* Start LS firmware on boot falcon */
	FUNC2(falcon);

	return 0;
}