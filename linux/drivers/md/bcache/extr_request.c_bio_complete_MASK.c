#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  status; } ;
struct search {TYPE_4__* orig_bio; TYPE_1__ iop; TYPE_3__* d; int /*<<< orphan*/  start_time; } ;
struct TYPE_10__ {int /*<<< orphan*/  bi_status; } ;
struct TYPE_9__ {TYPE_2__* disk; } ;
struct TYPE_8__ {int /*<<< orphan*/  part0; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_4__*) ; 

__attribute__((used)) static void FUNC4(struct search *s)
{
	if (s->orig_bio) {
		FUNC2(s->d->disk->queue, FUNC1(s->orig_bio),
				    &s->d->disk->part0, s->start_time);

		FUNC3(s->d, s->orig_bio);
		s->orig_bio->bi_status = s->iop.status;
		FUNC0(s->orig_bio);
		s->orig_bio = NULL;
	}
}