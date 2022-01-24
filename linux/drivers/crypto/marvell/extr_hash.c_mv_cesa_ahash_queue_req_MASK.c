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
struct mv_cesa_engine {int dummy; } ;
struct mv_cesa_ahash_req {int /*<<< orphan*/  base; } ;
struct ahash_request {int /*<<< orphan*/  base; int /*<<< orphan*/  nbytes; } ;

/* Variables and functions */
 struct mv_cesa_ahash_req* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mv_cesa_engine*) ; 
 int FUNC3 (struct ahash_request*,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct mv_cesa_engine* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ahash_request *req)
{
	struct mv_cesa_ahash_req *creq = FUNC0(req);
	struct mv_cesa_engine *engine;
	bool cached = false;
	int ret;

	ret = FUNC3(req, &cached);
	if (ret)
		return ret;

	if (cached)
		return 0;

	engine = FUNC6(req->nbytes);
	FUNC2(&req->base, engine);

	ret = FUNC4(&req->base, &creq->base);

	if (FUNC5(&req->base, ret))
		FUNC1(req);

	return ret;
}