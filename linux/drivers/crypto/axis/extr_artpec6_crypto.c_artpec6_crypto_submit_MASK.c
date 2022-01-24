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
struct artpec6_crypto_req_common {int /*<<< orphan*/  list; TYPE_1__* req; } ;
struct artpec6_crypto {int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  queue; int /*<<< orphan*/  pending; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct artpec6_crypto_req_common*) ; 
 int /*<<< orphan*/  artpec6_crypto_dev ; 
 int /*<<< orphan*/  FUNC2 (struct artpec6_crypto_req_common*) ; 
 struct artpec6_crypto* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct artpec6_crypto_req_common *req)
{
	struct artpec6_crypto *ac = FUNC3(artpec6_crypto_dev);
	int ret = -EBUSY;

	FUNC5(&ac->queue_lock);

	if (!FUNC0()) {
		FUNC4(&req->list, &ac->pending);
		FUNC2(req);
		ret = -EINPROGRESS;
	} else if (req->req->flags & CRYPTO_TFM_REQ_MAY_BACKLOG) {
		FUNC4(&req->list, &ac->queue);
	} else {
		FUNC1(req);
	}

	FUNC6(&ac->queue_lock);

	return ret;
}