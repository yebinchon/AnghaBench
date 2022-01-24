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
struct TYPE_2__ {scalar_t__ next; } ;
struct smscore_device_t {int /*<<< orphan*/  bufferslock; TYPE_1__ buffers; } ;
struct smscore_buffer_t {int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct smscore_buffer_t *FUNC4(struct smscore_device_t *coredev)
{
	struct smscore_buffer_t *cb = NULL;
	unsigned long flags;

	FUNC2(&coredev->bufferslock, flags);
	if (!FUNC1(&coredev->buffers)) {
		cb = (struct smscore_buffer_t *) coredev->buffers.next;
		FUNC0(&cb->entry);
	}
	FUNC3(&coredev->bufferslock, flags);
	return cb;
}