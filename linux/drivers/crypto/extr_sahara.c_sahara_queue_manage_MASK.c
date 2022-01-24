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
struct sahara_dev {int /*<<< orphan*/  queue_mutex; int /*<<< orphan*/  queue; } ;
struct crypto_async_request {int /*<<< orphan*/  (* complete ) (struct crypto_async_request*,int) ;int /*<<< orphan*/  tfm; } ;
struct ahash_request {int dummy; } ;
struct ablkcipher_request {int dummy; } ;

/* Variables and functions */
 scalar_t__ CRYPTO_ALG_TYPE_AHASH ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ablkcipher_request* FUNC1 (struct crypto_async_request*) ; 
 struct ahash_request* FUNC2 (struct crypto_async_request*) ; 
 struct crypto_async_request* FUNC3 (int /*<<< orphan*/ *) ; 
 struct crypto_async_request* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct ablkcipher_request*) ; 
 int FUNC10 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct crypto_async_request*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct crypto_async_request*,int) ; 

__attribute__((used)) static int FUNC14(void *data)
{
	struct sahara_dev *dev = (struct sahara_dev *)data;
	struct crypto_async_request *async_req;
	struct crypto_async_request *backlog;
	int ret = 0;

	do {
		FUNC0(TASK_INTERRUPTIBLE);

		FUNC7(&dev->queue_mutex);
		backlog = FUNC4(&dev->queue);
		async_req = FUNC3(&dev->queue);
		FUNC8(&dev->queue_mutex);

		if (backlog)
			backlog->complete(backlog, -EINPROGRESS);

		if (async_req) {
			if (FUNC5(async_req->tfm) ==
			    CRYPTO_ALG_TYPE_AHASH) {
				struct ahash_request *req =
					FUNC2(async_req);

				ret = FUNC10(req);
			} else {
				struct ablkcipher_request *req =
					FUNC1(async_req);

				ret = FUNC9(req);
			}

			async_req->complete(async_req, ret);

			continue;
		}

		FUNC11();
	} while (!FUNC6());

	return 0;
}