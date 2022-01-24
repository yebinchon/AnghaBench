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
struct qce_device {int /*<<< orphan*/  result; int /*<<< orphan*/  lock; struct crypto_async_request* req; } ;
struct crypto_async_request {int /*<<< orphan*/  (* complete ) (struct crypto_async_request*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qce_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_async_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	struct qce_device *qce = (struct qce_device *)data;
	struct crypto_async_request *req;
	unsigned long flags;

	FUNC1(&qce->lock, flags);
	req = qce->req;
	qce->req = NULL;
	FUNC2(&qce->lock, flags);

	if (req)
		req->complete(req, qce->result);

	FUNC0(qce, NULL);
}