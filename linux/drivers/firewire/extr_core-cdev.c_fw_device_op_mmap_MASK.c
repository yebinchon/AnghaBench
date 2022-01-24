#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int vm_flags; int vm_start; unsigned long vm_end; } ;
struct file {struct client* private_data; } ;
struct TYPE_6__ {int /*<<< orphan*/ * pages; } ;
struct client {int vm_start; int buffer_is_mapped; TYPE_5__* device; TYPE_1__ buffer; int /*<<< orphan*/  lock; scalar_t__ iso_context; } ;
struct TYPE_7__ {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int VM_SHARED ; 
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct file *file, struct vm_area_struct *vma)
{
	struct client *client = file->private_data;
	unsigned long size;
	int page_count, ret;

	if (FUNC0(client->device))
		return -ENODEV;

	/* FIXME: We could support multiple buffers, but we don't. */
	if (client->buffer.pages != NULL)
		return -EBUSY;

	if (!(vma->vm_flags & VM_SHARED))
		return -EINVAL;

	if (vma->vm_start & ~PAGE_MASK)
		return -EINVAL;

	client->vm_start = vma->vm_start;
	size = vma->vm_end - vma->vm_start;
	page_count = size >> PAGE_SHIFT;
	if (size & ~PAGE_MASK)
		return -EINVAL;

	ret = FUNC1(&client->buffer, page_count);
	if (ret < 0)
		return ret;

	FUNC6(&client->lock);
	if (client->iso_context) {
		ret = FUNC3(&client->buffer,
				client->device->card,
				FUNC5(client->iso_context));
		client->buffer_is_mapped = (ret == 0);
	}
	FUNC7(&client->lock);
	if (ret < 0)
		goto fail;

	ret = FUNC4(&client->buffer, vma);
	if (ret < 0)
		goto fail;

	return 0;
 fail:
	FUNC2(&client->buffer, client->device->card);
	return ret;
}