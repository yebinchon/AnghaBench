#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int length; int /*<<< orphan*/  data; int /*<<< orphan*/  closure; } ;
struct TYPE_8__ {int /*<<< orphan*/  release; } ;
struct TYPE_6__ {int /*<<< orphan*/  transaction; TYPE_4__ resource; } ;
struct outbound_transaction_event {TYPE_3__ response; TYPE_2__ r; struct client* client; } ;
struct fw_cdev_send_request {int length; int /*<<< orphan*/  offset; int /*<<< orphan*/  generation; int /*<<< orphan*/  tcode; scalar_t__ data; int /*<<< orphan*/  closure; } ;
struct client {TYPE_1__* device; } ;
struct TYPE_5__ {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TCODE_STREAM_DATA ; 
 int /*<<< orphan*/  TCODE_WRITE_QUADLET_REQUEST ; 
 int FUNC0 (struct client*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  complete_transaction ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct outbound_transaction_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct outbound_transaction_event*) ; 
 struct outbound_transaction_event* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  release_transaction ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct client *client,
			struct fw_cdev_send_request *request,
			int destination_id, int speed)
{
	struct outbound_transaction_event *e;
	int ret;

	if (request->tcode != TCODE_STREAM_DATA &&
	    (request->length > 4096 || request->length > 512 << speed))
		return -EIO;

	if (request->tcode == TCODE_WRITE_QUADLET_REQUEST &&
	    request->length < 4)
		return -EINVAL;

	e = FUNC4(sizeof(*e) + request->length, GFP_KERNEL);
	if (e == NULL)
		return -ENOMEM;

	e->client = client;
	e->response.length = request->length;
	e->response.closure = request->closure;

	if (request->data &&
	    FUNC1(e->response.data,
			   FUNC5(request->data), request->length)) {
		ret = -EFAULT;
		goto failed;
	}

	e->r.resource.release = release_transaction;
	ret = FUNC0(client, &e->r.resource, GFP_KERNEL);
	if (ret < 0)
		goto failed;

	FUNC2(client->device->card, &e->r.transaction,
			request->tcode, destination_id, request->generation,
			speed, request->offset, e->response.data,
			request->length, complete_transaction, e);
	return 0;

 failed:
	FUNC3(e);

	return ret;
}