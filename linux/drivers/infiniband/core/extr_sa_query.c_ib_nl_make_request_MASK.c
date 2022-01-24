#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct ib_sa_query {int /*<<< orphan*/  list; scalar_t__ timeout; scalar_t__ seq; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_3__ {int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ ib_nl_request_list ; 
 int /*<<< orphan*/  ib_nl_request_lock ; 
 int /*<<< orphan*/  ib_nl_sa_request_seq ; 
 int FUNC2 (struct ib_sa_query*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ib_nl_timed_work ; 
 int /*<<< orphan*/  ib_nl_wq ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  sa_local_svc_timeout_ms ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct ib_sa_query *query, gfp_t gfp_mask)
{
	unsigned long flags;
	unsigned long delay;
	int ret;

	FUNC0(&query->list);
	query->seq = (u32)FUNC1(&ib_nl_sa_request_seq);

	/* Put the request on the list first.*/
	FUNC7(&ib_nl_request_lock, flags);
	delay = FUNC5(sa_local_svc_timeout_ms);
	query->timeout = delay + jiffies;
	FUNC3(&query->list, &ib_nl_request_list);
	/* Start the timeout if this is the only request */
	if (ib_nl_request_list.next == &query->list)
		FUNC6(ib_nl_wq, &ib_nl_timed_work, delay);
	FUNC8(&ib_nl_request_lock, flags);

	ret = FUNC2(query, gfp_mask);
	if (ret) {
		ret = -EIO;
		/* Remove the request */
		FUNC7(&ib_nl_request_lock, flags);
		FUNC4(&query->list);
		FUNC8(&ib_nl_request_lock, flags);
	}

	return ret;
}