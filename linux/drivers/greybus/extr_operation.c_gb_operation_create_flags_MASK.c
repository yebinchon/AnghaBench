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
typedef  unsigned long u8 ;
struct gb_operation {int dummy; } ;
struct gb_connection {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 unsigned long GB_MESSAGE_TYPE_RESPONSE ; 
 unsigned long GB_OPERATION_FLAG_USER_MASK ; 
 unsigned long GB_REQUEST_TYPE_INVALID ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 struct gb_operation* FUNC1 (struct gb_connection*,unsigned long,size_t,size_t,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_operation*) ; 

struct gb_operation *
FUNC3(struct gb_connection *connection,
			  u8 type, size_t request_size,
			  size_t response_size, unsigned long flags,
			  gfp_t gfp)
{
	struct gb_operation *operation;

	if (FUNC0(type == GB_REQUEST_TYPE_INVALID))
		return NULL;
	if (FUNC0(type & GB_MESSAGE_TYPE_RESPONSE))
		type &= ~GB_MESSAGE_TYPE_RESPONSE;

	if (FUNC0(flags & ~GB_OPERATION_FLAG_USER_MASK))
		flags &= GB_OPERATION_FLAG_USER_MASK;

	operation = FUNC1(connection, type,
					       request_size, response_size,
					       flags, gfp);
	if (operation)
		FUNC2(operation);

	return operation;
}