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
struct skcipher_request {int /*<<< orphan*/  base; int /*<<< orphan*/  cryptlen; } ;
struct mv_cesa_skcipher_req {int /*<<< orphan*/  base; } ;
struct mv_cesa_op_ctx {int dummy; } ;
struct mv_cesa_engine {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct mv_cesa_engine* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mv_cesa_engine*) ; 
 int FUNC5 (struct skcipher_request*,struct mv_cesa_op_ctx*) ; 
 struct mv_cesa_skcipher_req* FUNC6 (struct skcipher_request*) ; 

__attribute__((used)) static int FUNC7(struct skcipher_request *req,
				      struct mv_cesa_op_ctx *tmpl)
{
	int ret;
	struct mv_cesa_skcipher_req *creq = FUNC6(req);
	struct mv_cesa_engine *engine;

	ret = FUNC5(req, tmpl);
	if (ret)
		return ret;

	engine = FUNC2(req->cryptlen);
	FUNC4(&req->base, engine);

	ret = FUNC0(&req->base, &creq->base);

	if (FUNC1(&req->base, ret))
		FUNC3(req);

	return ret;
}