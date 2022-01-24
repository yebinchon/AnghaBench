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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct gb_operation_msg_hdr {int dummy; } ;
struct gb_operation {TYPE_1__* request; scalar_t__ id; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  header; } ;

/* Variables and functions */
 unsigned long GB_OPERATION_FLAG_INCOMING ; 
 unsigned long GB_OPERATION_FLAG_UNIDIRECTIONAL ; 
 int /*<<< orphan*/  GB_REQUEST_TYPE_INVALID ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct gb_operation* FUNC0 (struct gb_connection*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_operation*) ; 

__attribute__((used)) static struct gb_operation *
FUNC3(struct gb_connection *connection, u16 id,
			     u8 type, void *data, size_t size)
{
	struct gb_operation *operation;
	size_t request_size;
	unsigned long flags = GB_OPERATION_FLAG_INCOMING;

	/* Caller has made sure we at least have a message header. */
	request_size = size - sizeof(struct gb_operation_msg_hdr);

	if (!id)
		flags |= GB_OPERATION_FLAG_UNIDIRECTIONAL;

	operation = FUNC0(connection, type,
					       request_size,
					       GB_REQUEST_TYPE_INVALID,
					       flags, GFP_ATOMIC);
	if (!operation)
		return NULL;

	operation->id = id;
	FUNC1(operation->request->header, data, size);
	FUNC2(operation);

	return operation;
}