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
struct nvif_notify {TYPE_1__* object; } ;
struct nv04_page_flip_state {int pitch; int bpp; TYPE_2__* crtc; scalar_t__ offset; } ;
struct nouveau_drm {int /*<<< orphan*/  dev; struct nouveau_channel* channel; } ;
struct nouveau_cli {struct nouveau_drm* drm; } ;
struct nouveau_channel {int dummy; } ;
struct TYPE_4__ {int y; int x; } ;
struct TYPE_3__ {scalar_t__ client; } ;

/* Variables and functions */
 int NVIF_NOTIFY_KEEP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_channel*,struct nv04_page_flip_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

int
FUNC3(struct nvif_notify *notify)
{
	struct nouveau_cli *cli = (void *)notify->object->client;
	struct nouveau_drm *drm = cli->drm;
	struct nouveau_channel *chan = drm->channel;
	struct nv04_page_flip_state state;

	if (!FUNC1(chan, &state)) {
		FUNC2(drm->dev, FUNC0(state.crtc),
				 state.offset + state.crtc->y *
				 state.pitch + state.crtc->x *
				 state.bpp / 8);
	}

	return NVIF_NOTIFY_KEEP;
}