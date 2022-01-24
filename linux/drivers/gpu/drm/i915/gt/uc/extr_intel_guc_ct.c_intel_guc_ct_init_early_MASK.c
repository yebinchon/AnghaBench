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
struct TYPE_2__ {int /*<<< orphan*/  owner; } ;
struct intel_guc_ct {int /*<<< orphan*/  worker; int /*<<< orphan*/  incoming_requests; int /*<<< orphan*/  pending_requests; int /*<<< orphan*/  lock; TYPE_1__ host_channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTB_OWNER_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ct_incoming_request_worker_func ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct intel_guc_ct *ct)
{
	/* we're using static channel owners */
	ct->host_channel.owner = CTB_OWNER_HOST;

	FUNC2(&ct->lock);
	FUNC0(&ct->pending_requests);
	FUNC0(&ct->incoming_requests);
	FUNC1(&ct->worker, ct_incoming_request_worker_func);
}