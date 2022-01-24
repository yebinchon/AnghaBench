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
struct cipher_req_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_CRYPTO_DIRECTION_DECRYPT ; 
 int FUNC0 (struct skcipher_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cipher_req_ctx*,int /*<<< orphan*/ ,int) ; 
 struct cipher_req_ctx* FUNC2 (struct skcipher_request*) ; 

__attribute__((used)) static int FUNC3(struct skcipher_request *req)
{
	struct cipher_req_ctx *req_ctx = FUNC2(req);

	FUNC1(req_ctx, 0, sizeof(*req_ctx));

	return FUNC0(req, DRV_CRYPTO_DIRECTION_DECRYPT);
}