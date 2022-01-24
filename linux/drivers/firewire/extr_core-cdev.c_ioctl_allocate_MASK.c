#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fw_cdev_allocate {int /*<<< orphan*/  handle; scalar_t__ offset; int /*<<< orphan*/  closure; scalar_t__ length; scalar_t__ region_end; } ;
union ioctl_arg {struct fw_cdev_allocate allocate; } ;
struct fw_address_region {scalar_t__ end; scalar_t__ start; } ;
struct client {scalar_t__ version; } ;
struct TYPE_4__ {int /*<<< orphan*/  handle; int /*<<< orphan*/  (* release ) (struct client*,TYPE_1__*) ;} ;
struct TYPE_5__ {scalar_t__ offset; struct address_handler_resource* callback_data; int /*<<< orphan*/  address_callback; scalar_t__ length; } ;
struct address_handler_resource {TYPE_1__ resource; TYPE_2__ handler; struct client* client; int /*<<< orphan*/  closure; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FW_CDEV_VERSION_ALLOCATE_REGION_END ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct client*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,struct fw_address_region*) ; 
 int /*<<< orphan*/  handle_request ; 
 int /*<<< orphan*/  FUNC2 (struct address_handler_resource*) ; 
 struct address_handler_resource* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct client*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct client *client, union ioctl_arg *arg)
{
	struct fw_cdev_allocate *a = &arg->allocate;
	struct address_handler_resource *r;
	struct fw_address_region region;
	int ret;

	r = FUNC3(sizeof(*r), GFP_KERNEL);
	if (r == NULL)
		return -ENOMEM;

	region.start = a->offset;
	if (client->version < FW_CDEV_VERSION_ALLOCATE_REGION_END)
		region.end = a->offset + a->length;
	else
		region.end = a->region_end;

	r->handler.length           = a->length;
	r->handler.address_callback = handle_request;
	r->handler.callback_data    = r;
	r->closure   = a->closure;
	r->client    = client;

	ret = FUNC1(&r->handler, &region);
	if (ret < 0) {
		FUNC2(r);
		return ret;
	}
	a->offset = r->handler.offset;

	r->resource.release = release_address_handler;
	ret = FUNC0(client, &r->resource, GFP_KERNEL);
	if (ret < 0) {
		FUNC4(client, &r->resource);
		return ret;
	}
	a->handle = r->resource.handle;

	return 0;
}