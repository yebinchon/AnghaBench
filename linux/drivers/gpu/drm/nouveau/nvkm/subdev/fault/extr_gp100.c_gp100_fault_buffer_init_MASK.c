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
struct nvkm_fault_buffer {int /*<<< orphan*/  addr; TYPE_2__* fault; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct nvkm_fault_buffer *buffer)
{
	struct nvkm_device *device = buffer->fault->subdev.device;
	FUNC2(device, 0x002a74, FUNC3(buffer->addr));
	FUNC2(device, 0x002a70, FUNC0(buffer->addr));
	FUNC1(device, 0x002a70, 0x00000001, 0x00000001);
}