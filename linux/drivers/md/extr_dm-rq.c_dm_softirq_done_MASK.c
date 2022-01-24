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
struct request {int rq_flags; } ;
struct mapped_device {int dummy; } ;
struct dm_rq_target_io {int /*<<< orphan*/  error; struct mapped_device* md; struct request* clone; } ;

/* Variables and functions */
 int RQF_FAILED ; 
 int /*<<< orphan*/  FUNC0 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mapped_device*,struct request*) ; 
 struct dm_rq_target_io* FUNC4 (struct request*) ; 

__attribute__((used)) static void FUNC5(struct request *rq)
{
	bool mapped = true;
	struct dm_rq_target_io *tio = FUNC4(rq);
	struct request *clone = tio->clone;

	if (!clone) {
		struct mapped_device *md = tio->md;

		FUNC3(md, rq);
		FUNC0(rq, tio->error);
		FUNC2(md);
		return;
	}

	if (rq->rq_flags & RQF_FAILED)
		mapped = false;

	FUNC1(clone, tio->error, mapped);
}