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
struct fw_address_region {int start; int end; } ;
struct fw_address_handler {int length; int offset; int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  address_handler_list ; 
 int /*<<< orphan*/  address_handler_list_lock ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct fw_address_handler* FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct fw_address_handler *handler,
				const struct fw_address_region *region)
{
	struct fw_address_handler *other;
	int ret = -EBUSY;

	if (region->start & 0xffff000000000003ULL ||
	    region->start >= region->end ||
	    region->end   > 0x0001000000000000ULL ||
	    handler->length & 3 ||
	    handler->length == 0)
		return -EINVAL;

	FUNC3(&address_handler_list_lock);

	handler->offset = region->start;
	while (handler->offset + handler->length <= region->end) {
		if (FUNC0(handler->offset, handler->length))
			other = NULL;
		else
			other = FUNC2
					(&address_handler_list,
					 handler->offset, handler->length);
		if (other != NULL) {
			handler->offset += other->length;
		} else {
			FUNC1(&handler->link, &address_handler_list);
			ret = 0;
			break;
		}
	}

	FUNC4(&address_handler_list_lock);

	return ret;
}