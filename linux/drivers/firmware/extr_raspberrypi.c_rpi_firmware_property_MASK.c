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
typedef  int /*<<< orphan*/  u32 ;
struct rpi_firmware_property_tag_header {size_t buf_size; scalar_t__ req_resp_size; int /*<<< orphan*/  tag; } ;
struct rpi_firmware {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,size_t) ; 
 int FUNC3 (struct rpi_firmware*,void*,size_t) ; 

int FUNC4(struct rpi_firmware *fw,
			  u32 tag, void *tag_data, size_t buf_size)
{
	struct rpi_firmware_property_tag_header *header;
	int ret;

	/* Some mailboxes can use over 1k bytes. Rather than checking
	 * size and using stack or kmalloc depending on requirements,
	 * just use kmalloc. Mailboxes don't get called enough to worry
	 * too much about the time taken in the allocation.
	 */
	void *data = FUNC1(sizeof(*header) + buf_size, GFP_KERNEL);

	if (!data)
		return -ENOMEM;

	header = data;
	header->tag = tag;
	header->buf_size = buf_size;
	header->req_resp_size = 0;
	FUNC2(data + sizeof(*header), tag_data, buf_size);

	ret = FUNC3(fw, data, buf_size + sizeof(*header));

	FUNC2(tag_data, data + sizeof(*header), buf_size);

	FUNC0(data);

	return ret;
}