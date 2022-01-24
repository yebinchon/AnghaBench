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
typedef  int u32 ;
struct nvif_notify_rep_v0 {scalar_t__ version; int route; scalar_t__ token; } ;
struct nvif_notify {int size; int /*<<< orphan*/ * data; int /*<<< orphan*/  work; int /*<<< orphan*/  flags; int /*<<< orphan*/  putcnt; TYPE_1__* object; } ;
struct nvif_client {TYPE_2__* driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  keep; } ;
struct TYPE_3__ {struct nvif_client* client; } ;

/* Variables and functions */
 int NVIF_NOTIFY_DROP ; 
 int /*<<< orphan*/  NVIF_NOTIFY_WORK ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,void const*,int) ; 
 int FUNC3 (struct nvif_notify*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC6(const void *header, u32 length, const void *data, u32 size)
{
	struct nvif_notify *notify = NULL;
	const union {
		struct nvif_notify_rep_v0 v0;
	} *args = header;
	int ret = NVIF_NOTIFY_DROP;

	if (length == sizeof(args->v0) && args->v0.version == 0) {
		if (FUNC0(args->v0.route))
			return NVIF_NOTIFY_DROP;
		notify = (void *)(unsigned long)args->v0.token;
	}

	if (!FUNC0(notify == NULL)) {
		struct nvif_client *client = notify->object->client;
		if (!FUNC0(notify->size != size)) {
			FUNC1(&notify->putcnt);
			if (FUNC5(NVIF_NOTIFY_WORK, &notify->flags)) {
				FUNC2((void *)notify->data, data, size);
				FUNC4(&notify->work);
				return NVIF_NOTIFY_DROP;
			}
			notify->data = data;
			ret = FUNC3(notify, client->driver->keep);
			notify->data = NULL;
		}
	}

	return ret;
}