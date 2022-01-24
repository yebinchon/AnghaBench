#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct usif_notify {int reply; scalar_t__ route; int /*<<< orphan*/  enabled; TYPE_5__* p; scalar_t__ token; } ;
struct nvif_notify_rep_v0 {int version; scalar_t__ route; scalar_t__ token; } ;
struct drm_file {scalar_t__ event_space; int /*<<< orphan*/  event_wait; int /*<<< orphan*/  event_list; TYPE_1__* minor; } ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;
struct TYPE_8__ {scalar_t__ length; } ;
struct TYPE_9__ {TYPE_3__ base; int /*<<< orphan*/ * data; } ;
struct TYPE_7__ {int /*<<< orphan*/  link; struct drm_file* file_priv; } ;
struct TYPE_10__ {TYPE_4__ e; TYPE_2__ base; } ;
struct TYPE_6__ {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ NVDRM_NOTIFY_USIF ; 
 int NVIF_NOTIFY_DROP ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(const void *header, u32 length, const void *data, u32 size)
{
	struct usif_notify *ntfy = NULL;
	const union {
		struct nvif_notify_rep_v0 v0;
	} *rep = header;
	struct drm_device *dev;
	struct drm_file *filp;
	unsigned long flags;

	if (length == sizeof(rep->v0) && rep->v0.version == 0) {
		if (FUNC2(!(ntfy = (void *)(unsigned long)rep->v0.token)))
			return NVIF_NOTIFY_DROP;
		FUNC1(rep->v0.route != NVDRM_NOTIFY_USIF);
	} else
	if (FUNC2(1))
		return NVIF_NOTIFY_DROP;

	if (FUNC2(!ntfy->p || ntfy->reply != (length + size)))
		return NVIF_NOTIFY_DROP;
	filp = ntfy->p->base.file_priv;
	dev = filp->minor->dev;

	FUNC5(&ntfy->p->e.data[0], header, length);
	FUNC5(&ntfy->p->e.data[length], data, size);
	switch (rep->v0.version) {
	case 0: {
		struct nvif_notify_rep_v0 *rep = (void *)ntfy->p->e.data;
		rep->route = ntfy->route;
		rep->token = ntfy->token;
	}
		break;
	default:
		FUNC0();
		break;
	}

	FUNC6(&dev->event_lock, flags);
	if (!FUNC2(filp->event_space < ntfy->p->e.base.length)) {
		FUNC4(&ntfy->p->base.link, &filp->event_list);
		filp->event_space -= ntfy->p->e.base.length;
	}
	FUNC8(&filp->event_wait);
	FUNC7(&dev->event_lock, flags);
	FUNC3(&ntfy->enabled, 0);
	return NVIF_NOTIFY_DROP;
}