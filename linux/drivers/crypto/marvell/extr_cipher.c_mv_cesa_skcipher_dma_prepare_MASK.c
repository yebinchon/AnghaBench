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
struct skcipher_request {int dummy; } ;
struct mv_cesa_req {int /*<<< orphan*/  engine; } ;
struct mv_cesa_skcipher_req {struct mv_cesa_req base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mv_cesa_req*,int /*<<< orphan*/ ) ; 
 struct mv_cesa_skcipher_req* FUNC1 (struct skcipher_request*) ; 

__attribute__((used)) static inline void
FUNC2(struct skcipher_request *req)
{
	struct mv_cesa_skcipher_req *creq = FUNC1(req);
	struct mv_cesa_req *basereq = &creq->base;

	FUNC0(basereq, basereq->engine);
}