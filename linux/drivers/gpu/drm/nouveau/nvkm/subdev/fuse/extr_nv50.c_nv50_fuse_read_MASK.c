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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_fuse {int /*<<< orphan*/  lock; TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvkm_device*,int,int,int) ; 
 scalar_t__ FUNC1 (struct nvkm_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u32
FUNC5(struct nvkm_fuse *fuse, u32 addr)
{
	struct nvkm_device *device = fuse->subdev.device;
	unsigned long flags;
	u32 fuse_enable, val;

	/* racy if another part of nvkm start writing to this reg */
	FUNC3(&fuse->lock, flags);
	fuse_enable = FUNC0(device, 0x001084, 0x800, 0x800);
	val = FUNC1(device, 0x021000 + addr);
	FUNC2(device, 0x001084, fuse_enable);
	FUNC4(&fuse->lock, flags);
	return val;
}