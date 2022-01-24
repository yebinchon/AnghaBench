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
struct TYPE_3__ {int rd_offset; } ;
struct safexcel_crypto_priv {TYPE_2__* ring; TYPE_1__ config; int /*<<< orphan*/  dev; } ;
struct safexcel_context {int (* handle_result ) (struct safexcel_crypto_priv*,int,struct crypto_async_request*,int*,int*) ;} ;
struct crypto_async_request {int /*<<< orphan*/  (* complete ) (struct crypto_async_request*,int) ;int /*<<< orphan*/  tfm; } ;
struct TYPE_4__ {int busy; int /*<<< orphan*/  lock; scalar_t__ requests; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct safexcel_crypto_priv*,int) ; 
 scalar_t__ EIP197_HIA_xDR_PROC_COUNT ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int EIP197_xDR_PROC_xD_PKT_MASK ; 
 int EIP197_xDR_PROC_xD_PKT_OFFSET ; 
 struct safexcel_context* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (scalar_t__) ; 
 struct crypto_async_request* FUNC8 (struct safexcel_crypto_priv*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct safexcel_crypto_priv*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct safexcel_crypto_priv*,int,struct crypto_async_request*,int*,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct crypto_async_request*,int) ; 
 int /*<<< orphan*/  FUNC14 (int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC15(struct safexcel_crypto_priv *priv,
						     int ring)
{
	struct crypto_async_request *req;
	struct safexcel_context *ctx;
	int ret, i, nreq, ndesc, tot_descs, handled = 0;
	bool should_complete;

handle_results:
	tot_descs = 0;

	nreq = FUNC7(FUNC0(priv, ring) + EIP197_HIA_xDR_PROC_COUNT);
	nreq >>= EIP197_xDR_PROC_xD_PKT_OFFSET;
	nreq &= EIP197_xDR_PROC_xD_PKT_MASK;
	if (!nreq)
		goto requests_left;

	for (i = 0; i < nreq; i++) {
		req = FUNC8(priv, ring);

		ctx = FUNC3(req->tfm);
		ndesc = ctx->handle_result(priv, ring, req,
					   &should_complete, &ret);
		if (ndesc < 0) {
			FUNC4(priv->dev, "failed to handle result (%d)\n",
				ndesc);
			goto acknowledge;
		}

		if (should_complete) {
			FUNC5();
			req->complete(req, ret);
			FUNC6();
		}

		tot_descs += ndesc;
		handled++;
	}

acknowledge:
	if (i)
		FUNC14(FUNC2(i) |
		       FUNC1(tot_descs * priv->config.rd_offset),
		       FUNC0(priv, ring) + EIP197_HIA_xDR_PROC_COUNT);

	/* If the number of requests overflowed the counter, try to proceed more
	 * requests.
	 */
	if (nreq == EIP197_xDR_PROC_xD_PKT_MASK)
		goto handle_results;

requests_left:
	FUNC10(&priv->ring[ring].lock);

	priv->ring[ring].requests -= handled;
	FUNC9(priv, ring);

	if (!priv->ring[ring].requests)
		priv->ring[ring].busy = false;

	FUNC11(&priv->ring[ring].lock);
}