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
struct srp_request {int dummy; } ;
struct srp_rdma_ch {int /*<<< orphan*/  lock; int /*<<< orphan*/  req_lim; } ;
struct scsi_cmnd {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*,struct srp_rdma_ch*,struct srp_request*) ; 

__attribute__((used)) static void FUNC3(struct srp_rdma_ch *ch, struct srp_request *req,
			 struct scsi_cmnd *scmnd, s32 req_lim_delta)
{
	unsigned long flags;

	FUNC2(scmnd, ch, req);

	FUNC0(&ch->lock, flags);
	ch->req_lim += req_lim_delta;
	FUNC1(&ch->lock, flags);
}