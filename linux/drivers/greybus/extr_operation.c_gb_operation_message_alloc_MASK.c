#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct gb_operation_msg_hdr {int dummy; } ;
struct gb_message {int /*<<< orphan*/  buffer; } ;
struct gb_host_device {size_t buffer_size_max; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t,size_t) ; 
 int /*<<< orphan*/  gb_message_cache ; 
 int /*<<< orphan*/  FUNC1 (struct gb_host_device*,struct gb_message*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct gb_message*) ; 
 struct gb_message* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct gb_message *
FUNC5(struct gb_host_device *hd, u8 type,
			   size_t payload_size, gfp_t gfp_flags)
{
	struct gb_message *message;
	struct gb_operation_msg_hdr *header;
	size_t message_size = payload_size + sizeof(*header);

	if (message_size > hd->buffer_size_max) {
		FUNC0(&hd->dev, "requested message size too big (%zu > %zu)\n",
			 message_size, hd->buffer_size_max);
		return NULL;
	}

	/* Allocate the message structure and buffer. */
	message = FUNC3(gb_message_cache, gfp_flags);
	if (!message)
		return NULL;

	message->buffer = FUNC4(message_size, gfp_flags);
	if (!message->buffer)
		goto err_free_message;

	/* Initialize the message.  Operation id is filled in later. */
	FUNC1(hd, message, 0, payload_size, type);

	return message;

err_free_message:
	FUNC2(gb_message_cache, message);

	return NULL;
}