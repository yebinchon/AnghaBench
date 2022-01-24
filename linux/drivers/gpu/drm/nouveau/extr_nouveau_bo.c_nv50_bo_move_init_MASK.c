#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  handle; } ;
struct nouveau_channel {TYPE_3__ vram; TYPE_2__* drm; } ;
struct TYPE_4__ {int /*<<< orphan*/  handle; } ;
struct TYPE_5__ {TYPE_1__ ntfy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_channel*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  NvSubCopy ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_channel*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nouveau_channel*,int) ; 

__attribute__((used)) static int
FUNC3(struct nouveau_channel *chan, u32 handle)
{
	int ret = FUNC2(chan, 6);
	if (ret == 0) {
		FUNC0(chan, NvSubCopy, 0x0000, 1);
		FUNC1  (chan, handle);
		FUNC0(chan, NvSubCopy, 0x0180, 3);
		FUNC1  (chan, chan->drm->ntfy.handle);
		FUNC1  (chan, chan->vram.handle);
		FUNC1  (chan, chan->vram.handle);
	}

	return ret;
}