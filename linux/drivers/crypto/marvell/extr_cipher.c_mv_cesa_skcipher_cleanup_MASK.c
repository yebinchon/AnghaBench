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
struct mv_cesa_skcipher_req {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 scalar_t__ CESA_DMA_REQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct skcipher_request*) ; 
 struct mv_cesa_skcipher_req* FUNC2 (struct skcipher_request*) ; 

__attribute__((used)) static inline void FUNC3(struct skcipher_request *req)
{
	struct mv_cesa_skcipher_req *creq = FUNC2(req);

	if (FUNC0(&creq->base) == CESA_DMA_REQ)
		FUNC1(req);
}