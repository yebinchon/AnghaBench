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
struct mv_cesa_req {int /*<<< orphan*/  engine; } ;
struct mv_cesa_ahash_req {struct mv_cesa_req base; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 struct mv_cesa_ahash_req* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv_cesa_req*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct ahash_request *req)
{
	struct mv_cesa_ahash_req *creq = FUNC0(req);
	struct mv_cesa_req *basereq = &creq->base;

	FUNC1(basereq, basereq->engine);
}