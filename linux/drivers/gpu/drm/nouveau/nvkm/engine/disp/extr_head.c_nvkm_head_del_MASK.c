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
struct nvkm_head {int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct nvkm_head **phead)
{
	struct nvkm_head *head = *phead;
	if (head) {
		FUNC0(head, "dtor");
		FUNC2(&head->head);
		FUNC1(*phead);
		*phead = NULL;
	}
}