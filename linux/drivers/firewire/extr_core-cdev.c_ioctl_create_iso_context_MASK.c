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
struct fw_cdev_create_iso_context {int type; int channel; int header_size; scalar_t__ handle; int /*<<< orphan*/  closure; int /*<<< orphan*/  speed; } ;
union ioctl_arg {struct fw_cdev_create_iso_context create_iso_context; } ;
struct fw_iso_context {int drop_overflow_headers; } ;
struct client {scalar_t__ version; int buffer_is_mapped; int /*<<< orphan*/  lock; struct fw_iso_context* iso_context; int /*<<< orphan*/  iso_closure; TYPE_1__* device; int /*<<< orphan*/  buffer; } ;
typedef  int /*<<< orphan*/  fw_iso_callback_t ;
struct TYPE_2__ {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ FW_CDEV_ISO_CONTEXT_RECEIVE ; 
 scalar_t__ FW_CDEV_ISO_CONTEXT_RECEIVE_MULTICHANNEL ; 
 scalar_t__ FW_CDEV_ISO_CONTEXT_TRANSMIT ; 
 scalar_t__ FW_CDEV_VERSION_AUTO_FLUSH_ISO_OVERFLOW ; 
#define  FW_ISO_CONTEXT_RECEIVE 130 
#define  FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL 129 
#define  FW_ISO_CONTEXT_TRANSMIT 128 
 scalar_t__ FUNC1 (struct fw_iso_context*) ; 
 int FUNC2 (struct fw_iso_context*) ; 
 int /*<<< orphan*/  SCODE_3200 ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fw_iso_context* FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct client*) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_iso_context*) ; 
 int /*<<< orphan*/  iso_callback ; 
 int /*<<< orphan*/  FUNC6 (struct fw_iso_context*) ; 
 int /*<<< orphan*/  iso_mc_callback ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct client *client, union ioctl_arg *arg)
{
	struct fw_cdev_create_iso_context *a = &arg->create_iso_context;
	struct fw_iso_context *context;
	fw_iso_callback_t cb;
	int ret;

	FUNC0(FW_CDEV_ISO_CONTEXT_TRANSMIT != FW_ISO_CONTEXT_TRANSMIT ||
		     FW_CDEV_ISO_CONTEXT_RECEIVE  != FW_ISO_CONTEXT_RECEIVE  ||
		     FW_CDEV_ISO_CONTEXT_RECEIVE_MULTICHANNEL !=
					FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL);

	switch (a->type) {
	case FW_ISO_CONTEXT_TRANSMIT:
		if (a->speed > SCODE_3200 || a->channel > 63)
			return -EINVAL;

		cb = iso_callback;
		break;

	case FW_ISO_CONTEXT_RECEIVE:
		if (a->header_size < 4 || (a->header_size & 3) ||
		    a->channel > 63)
			return -EINVAL;

		cb = iso_callback;
		break;

	case FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL:
		cb = (fw_iso_callback_t)iso_mc_callback;
		break;

	default:
		return -EINVAL;
	}

	context = FUNC4(client->device->card, a->type,
			a->channel, a->speed, a->header_size, cb, client);
	if (FUNC1(context))
		return FUNC2(context);
	if (client->version < FW_CDEV_VERSION_AUTO_FLUSH_ISO_OVERFLOW)
		context->drop_overflow_headers = true;

	/* We only support one context at this time. */
	FUNC7(&client->lock);
	if (client->iso_context != NULL) {
		FUNC8(&client->lock);
		FUNC5(context);

		return -EBUSY;
	}
	if (!client->buffer_is_mapped) {
		ret = FUNC3(&client->buffer,
					    client->device->card,
					    FUNC6(context));
		if (ret < 0) {
			FUNC8(&client->lock);
			FUNC5(context);

			return ret;
		}
		client->buffer_is_mapped = true;
	}
	client->iso_closure = a->closure;
	client->iso_context = context;
	FUNC8(&client->lock);

	a->handle = 0;

	return 0;
}