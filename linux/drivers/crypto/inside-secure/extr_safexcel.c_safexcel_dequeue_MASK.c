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
struct TYPE_4__ {int rd_offset; int cd_offset; } ;
struct safexcel_crypto_priv {TYPE_2__ config; TYPE_1__* ring; } ;
struct safexcel_context {int (* send ) (struct crypto_async_request*,int,int*,int*) ;} ;
struct crypto_async_request {int /*<<< orphan*/  (* complete ) (struct crypto_async_request*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  tfm; } ;
struct TYPE_3__ {int requests; int busy; int /*<<< orphan*/  lock; struct crypto_async_request* backlog; struct crypto_async_request* req; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 scalar_t__ FUNC0 (struct safexcel_crypto_priv*,int) ; 
 scalar_t__ FUNC1 (struct safexcel_crypto_priv*,int) ; 
 scalar_t__ EIP197_HIA_xDR_PREP_COUNT ; 
 struct crypto_async_request* FUNC2 (int /*<<< orphan*/ *) ; 
 struct crypto_async_request* FUNC3 (int /*<<< orphan*/ *) ; 
 struct safexcel_context* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct safexcel_crypto_priv*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct crypto_async_request*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct crypto_async_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

void FUNC11(struct safexcel_crypto_priv *priv, int ring)
{
	struct crypto_async_request *req, *backlog;
	struct safexcel_context *ctx;
	int ret, nreq = 0, cdesc = 0, rdesc = 0, commands, results;

	/* If a request wasn't properly dequeued because of a lack of resources,
	 * proceeded it first,
	 */
	req = priv->ring[ring].req;
	backlog = priv->ring[ring].backlog;
	if (req)
		goto handle_req;

	while (true) {
		FUNC6(&priv->ring[ring].queue_lock);
		backlog = FUNC3(&priv->ring[ring].queue);
		req = FUNC2(&priv->ring[ring].queue);
		FUNC7(&priv->ring[ring].queue_lock);

		if (!req) {
			priv->ring[ring].req = NULL;
			priv->ring[ring].backlog = NULL;
			goto finalize;
		}

handle_req:
		ctx = FUNC4(req->tfm);
		ret = ctx->send(req, ring, &commands, &results);
		if (ret)
			goto request_failed;

		if (backlog)
			backlog->complete(backlog, -EINPROGRESS);

		/* In case the send() helper did not issue any command to push
		 * to the engine because the input data was cached, continue to
		 * dequeue other requests as this is valid and not an error.
		 */
		if (!commands && !results)
			continue;

		cdesc += commands;
		rdesc += results;
		nreq++;
	}

request_failed:
	/* Not enough resources to handle all the requests. Bail out and save
	 * the request and the backlog for the next dequeue call (per-ring).
	 */
	priv->ring[ring].req = req;
	priv->ring[ring].backlog = backlog;

finalize:
	if (!nreq)
		return;

	FUNC6(&priv->ring[ring].lock);

	priv->ring[ring].requests += nreq;

	if (!priv->ring[ring].busy) {
		FUNC5(priv, ring);
		priv->ring[ring].busy = true;
	}

	FUNC7(&priv->ring[ring].lock);

	/* let the RDR know we have pending descriptors */
	FUNC10((rdesc * priv->config.rd_offset) << 2,
	       FUNC1(priv, ring) + EIP197_HIA_xDR_PREP_COUNT);

	/* let the CDR know we have pending descriptors */
	FUNC10((cdesc * priv->config.cd_offset) << 2,
	       FUNC0(priv, ring) + EIP197_HIA_xDR_PREP_COUNT);
}