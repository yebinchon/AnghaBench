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
struct packet_buffer {size_t capacity; int /*<<< orphan*/  wait; int /*<<< orphan*/  size; scalar_t__ lost_packet_count; int /*<<< orphan*/ * data; struct packet* tail; struct packet* head; } ;
struct packet {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct packet_buffer *buffer, size_t capacity)
{
	buffer->data = FUNC2(capacity, GFP_KERNEL);
	if (buffer->data == NULL)
		return -ENOMEM;
	buffer->head = (struct packet *) buffer->data;
	buffer->tail = (struct packet *) buffer->data;
	buffer->capacity = capacity;
	buffer->lost_packet_count = 0;
	FUNC0(&buffer->size, 0);
	FUNC1(&buffer->wait);

	return 0;
}