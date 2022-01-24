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
struct request {int dummy; } ;
struct dm_rq_target_io {int /*<<< orphan*/  error; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 struct dm_rq_target_io* FUNC1 (struct request*) ; 

__attribute__((used)) static void FUNC2(struct request *rq, blk_status_t error)
{
	struct dm_rq_target_io *tio = FUNC1(rq);

	tio->error = error;
	FUNC0(rq);
}