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
struct request {struct dm_rq_target_io* end_io_data; } ;
struct mapped_device {int dummy; } ;
struct dm_rq_target_io {TYPE_2__* ti; struct request* orig; struct mapped_device* md; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* release_clone_rq ) (struct request*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mapped_device*,struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct request*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct request *clone, blk_status_t error)
{
	struct dm_rq_target_io *tio = clone->end_io_data;
	struct mapped_device *md = tio->md;
	struct request *rq = tio->orig;

	FUNC1(clone);
	tio->ti->type->release_clone_rq(clone, NULL);

	FUNC3(md, rq);
	FUNC0(rq, error);
	FUNC2(md);
}