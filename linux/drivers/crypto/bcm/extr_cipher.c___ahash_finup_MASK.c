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
struct iproc_reqctx_s {int is_final; scalar_t__ src_sent; int /*<<< orphan*/  total_todo; } ;
struct ahash_request {scalar_t__ nbytes; } ;

/* Variables and functions */
 int FUNC0 (struct ahash_request*) ; 
 struct iproc_reqctx_s* FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct ahash_request *req)
{
	struct iproc_reqctx_s *rctx = FUNC1(req);

	FUNC2("ahash_finup() nbytes:%u\n", req->nbytes);

	rctx->total_todo += req->nbytes;
	rctx->src_sent = 0;
	rctx->is_final = 1;

	return FUNC0(req);
}