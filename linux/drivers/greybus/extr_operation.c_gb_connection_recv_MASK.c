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
struct gb_operation_msg_hdr {int type; int /*<<< orphan*/  operation_id; int /*<<< orphan*/  size; } ;
struct gb_connection {scalar_t__ state; int /*<<< orphan*/  name; TYPE_1__* hd; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  header ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ GB_CONNECTION_STATE_DISABLED ; 
 int GB_MESSAGE_TYPE_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC2 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_connection*,struct gb_operation_msg_hdr*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_connection*,struct gb_operation_msg_hdr*,void*,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gb_operation_msg_hdr*,void*,int) ; 

void FUNC7(struct gb_connection *connection,
			void *data, size_t size)
{
	struct gb_operation_msg_hdr header;
	struct device *dev = &connection->hd->dev;
	size_t msg_size;

	if (connection->state == GB_CONNECTION_STATE_DISABLED ||
	    FUNC2(connection)) {
		FUNC1(dev, "%s: dropping %zu received bytes\n",
				     connection->name, size);
		return;
	}

	if (size < sizeof(header)) {
		FUNC0(dev, "%s: short message received\n",
				    connection->name);
		return;
	}

	/* Use memcpy as data may be unaligned */
	FUNC6(&header, data, sizeof(header));
	msg_size = FUNC5(header.size);
	if (size < msg_size) {
		FUNC0(dev,
				    "%s: incomplete message 0x%04x of type 0x%02x received (%zu < %zu)\n",
				    connection->name,
				    FUNC5(header.operation_id),
				    header.type, size, msg_size);
		return;		/* XXX Should still complete operation */
	}

	if (header.type & GB_MESSAGE_TYPE_RESPONSE) {
		FUNC4(connection,	&header, data,
					    msg_size);
	} else {
		FUNC3(connection, &header, data,
					   msg_size);
	}
}