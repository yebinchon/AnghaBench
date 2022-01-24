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
struct packet_buffer {scalar_t__ capacity; char* data; int /*<<< orphan*/  wait; int /*<<< orphan*/  size; struct packet* tail; int /*<<< orphan*/  lost_packet_count; int /*<<< orphan*/  total_packet_count; } ;
struct packet {size_t length; char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct packet_buffer *buffer, void *data, size_t length)
{
	char *end;

	buffer->total_packet_count++;

	if (buffer->capacity <
	    FUNC1(&buffer->size) + sizeof(struct packet) + length) {
		buffer->lost_packet_count++;
		return;
	}

	end = buffer->data + buffer->capacity;
	buffer->tail->length = length;

	if (&buffer->tail->data[length] < end) {
		FUNC2(buffer->tail->data, data, length);
		buffer->tail = (struct packet *) &buffer->tail->data[length];
	} else {
		size_t split = end - buffer->tail->data;

		FUNC2(buffer->tail->data, data, split);
		FUNC2(buffer->data, data + split, length - split);
		buffer->tail = (struct packet *) &buffer->data[length - split];
	}

	/* Finally, adjust buffer size and wake up userspace reader. */

	FUNC0(sizeof(struct packet) + length, &buffer->size);
	FUNC3(&buffer->wait);
}