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
struct sahara_sha_reqctx {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 struct sahara_sha_reqctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct sahara_sha_reqctx*,void const*,int) ; 

__attribute__((used)) static int FUNC2(struct ahash_request *req, const void *in)
{
	struct sahara_sha_reqctx *rctx = FUNC0(req);

	FUNC1(rctx, in, sizeof(struct sahara_sha_reqctx));

	return 0;
}