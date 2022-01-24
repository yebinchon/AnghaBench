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
typedef  scalar_t__ u32 ;
struct nvkm_device {int dummy; } ;
struct gt215_clk_info {scalar_t__ fb_delay; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct gt215_clk {TYPE_2__ base; struct gt215_clk_info* eng; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct gt215_clk*,int,int,int) ; 

__attribute__((used)) static void
FUNC3(struct gt215_clk *clk, int dom)
{
	struct gt215_clk_info *info = &clk->eng[dom];
	struct nvkm_device *device = clk->base.subdev.device;
	u32 fb_delay = FUNC0(device, 0x10002c);

	if (fb_delay < info->fb_delay)
		FUNC1(device, 0x10002c, info->fb_delay);

	FUNC2(clk, 0x00, 0x004200, dom);

	if (fb_delay > info->fb_delay)
		FUNC1(device, 0x10002c, info->fb_delay);
}