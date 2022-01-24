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
struct ib_sa_query {int id; int flags; TYPE_1__* mad_buf; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {unsigned long timeout_ms; struct ib_sa_query** context; } ;

/* Variables and functions */
 int IB_SA_ENABLE_LOCAL_SERVICE ; 
 int IB_SA_QUERY_OPA ; 
 int /*<<< orphan*/  RDMA_NL_GROUP_LS ; 
 int FUNC0 (int /*<<< orphan*/ *,int*,struct ib_sa_query*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_sa_query*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_sa_query*) ; 
 int /*<<< orphan*/  queries ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xa_limit_32b ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct ib_sa_query *query, unsigned long timeout_ms,
		    gfp_t gfp_mask)
{
	unsigned long flags;
	int ret, id;

	FUNC6(&queries, flags);
	ret = FUNC0(&queries, &id, query, xa_limit_32b, gfp_mask);
	FUNC7(&queries, flags);
	if (ret < 0)
		return ret;

	query->mad_buf->timeout_ms  = timeout_ms;
	query->mad_buf->context[0] = query;
	query->id = id;

	if ((query->flags & IB_SA_ENABLE_LOCAL_SERVICE) &&
	    (!(query->flags & IB_SA_QUERY_OPA))) {
		if (FUNC5(RDMA_NL_GROUP_LS)) {
			if (!FUNC2(query, gfp_mask))
				return id;
		}
		FUNC4(query);
	}

	ret = FUNC3(query->mad_buf, NULL);
	if (ret) {
		FUNC6(&queries, flags);
		FUNC1(&queries, id);
		FUNC7(&queries, flags);
	}

	/*
	 * It's not safe to dereference query any more, because the
	 * send may already have completed and freed the query in
	 * another context.
	 */
	return ret ? ret : id;
}