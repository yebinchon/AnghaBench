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
struct perf_output_handle {int head; } ;
struct cs_buffers {int nr_pages; unsigned long cur; unsigned long offset; int /*<<< orphan*/  data_size; } ;
struct coresight_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 struct cs_buffers* FUNC0 (struct perf_output_handle*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct coresight_device *csdev,
			      struct perf_output_handle *handle)
{
	int ret = 0;
	unsigned long head;
	struct cs_buffers *buf = FUNC0(handle);

	if (!buf)
		return -EINVAL;

	/* wrap head around to the amount of space we have */
	head = handle->head & ((buf->nr_pages << PAGE_SHIFT) - 1);

	/* find the page to write to */
	buf->cur = head / PAGE_SIZE;

	/* and offset within that page */
	buf->offset = head % PAGE_SIZE;

	FUNC1(&buf->data_size, 0);

	return ret;
}