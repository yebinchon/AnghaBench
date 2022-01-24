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
struct request {int dummy; } ;
struct mapped_device {int dummy; } ;
struct dm_rq_target_io {scalar_t__ clone; TYPE_2__* ti; struct request* orig; struct mapped_device* md; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* release_clone_rq ) (scalar_t__,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct request*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mapped_device*,struct request*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct dm_rq_target_io *tio, bool delay_requeue)
{
	struct mapped_device *md = tio->md;
	struct request *rq = tio->orig;
	unsigned long delay_ms = delay_requeue ? 100 : 0;

	FUNC3(md, rq);
	if (tio->clone) {
		FUNC0(tio->clone);
		tio->ti->type->release_clone_rq(tio->clone, NULL);
	}

	FUNC1(rq, delay_ms);
	FUNC2(md);
}