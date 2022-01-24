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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_object {struct nvkm_client* client; } ;
struct nvkm_event {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  token; int /*<<< orphan*/  route; int /*<<< orphan*/  version; } ;
struct TYPE_4__ {TYPE_1__ v0; } ;
struct nvkm_client_notify {int size; struct nvkm_client* client; int /*<<< orphan*/  n; TYPE_2__ rep; int /*<<< orphan*/  version; } ;
struct nvkm_client {struct nvkm_client_notify** notify; } ;
struct nvif_notify_req_v0 {size_t reply; int /*<<< orphan*/  token; int /*<<< orphan*/  route; int /*<<< orphan*/  version; } ;

/* Variables and functions */
 size_t FUNC0 (struct nvkm_client_notify**) ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int ENOSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_client_notify*) ; 
 struct nvkm_client_notify* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_object*,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC4 (int,void**,int /*<<< orphan*/ *,struct nvif_notify_req_v0,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nvkm_client_notify ; 
 int FUNC5 (struct nvkm_object*,struct nvkm_event*,int /*<<< orphan*/ ,int,void*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 

int
FUNC6(struct nvkm_object *object,
		       struct nvkm_event *event, void *data, u32 size)
{
	struct nvkm_client *client = object->client;
	struct nvkm_client_notify *notify;
	union {
		struct nvif_notify_req_v0 v0;
	} *req = data;
	u8  index, reply;
	int ret = -ENOSYS;

	for (index = 0; index < FUNC0(client->notify); index++) {
		if (!client->notify[index])
			break;
	}

	if (index == FUNC0(client->notify))
		return -ENOSPC;

	notify = FUNC2(sizeof(*notify), GFP_KERNEL);
	if (!notify)
		return -ENOMEM;

	FUNC3(object, "notify new size %d\n", size);
	if (!(ret = FUNC4(ret, &data, &size, req->v0, 0, 0, true))) {
		FUNC3(object, "notify new vers %d reply %d route %02x "
				   "token %llx\n", req->v0.version,
			   req->v0.reply, req->v0.route, req->v0.token);
		notify->version = req->v0.version;
		notify->size = sizeof(notify->rep.v0);
		notify->rep.v0.version = req->v0.version;
		notify->rep.v0.route = req->v0.route;
		notify->rep.v0.token = req->v0.token;
		reply = req->v0.reply;
	}

	if (ret == 0) {
		ret = FUNC5(object, event, nvkm_client_notify,
				       false, data, size, reply, &notify->n);
		if (ret == 0) {
			client->notify[index] = notify;
			notify->client = client;
			return index;
		}
	}

	FUNC1(notify);
	return ret;
}