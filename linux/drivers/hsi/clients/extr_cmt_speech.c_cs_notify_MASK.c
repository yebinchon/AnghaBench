#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct list_head {int dummy; } ;
struct char_queue {int /*<<< orphan*/  list; int /*<<< orphan*/  msg; } ;
struct TYPE_4__ {int /*<<< orphan*/  async_queue; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; TYPE_1__* cl; int /*<<< orphan*/  opened; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  SIGIO ; 
 TYPE_2__ cs_char_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct char_queue* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(u32 message, struct list_head *head)
{
	struct char_queue *entry;

	FUNC4(&cs_char_data.lock);

	if (!cs_char_data.opened) {
		FUNC5(&cs_char_data.lock);
		goto out;
	}

	entry = FUNC2(sizeof(*entry), GFP_ATOMIC);
	if (!entry) {
		FUNC0(&cs_char_data.cl->device,
			"Can't allocate new entry for the queue.\n");
		FUNC5(&cs_char_data.lock);
		goto out;
	}

	entry->msg = message;
	FUNC3(&entry->list, head);

	FUNC5(&cs_char_data.lock);

	FUNC6(&cs_char_data.wait);
	FUNC1(&cs_char_data.async_queue, SIGIO, POLL_IN);

out:
	return;
}