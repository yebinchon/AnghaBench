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
struct omap_aes_reqctx {int /*<<< orphan*/  iv; } ;
struct aead_request {int /*<<< orphan*/  iv; } ;

/* Variables and functions */
 int FLAGS_ENCRYPT ; 
 int FLAGS_GCM ; 
 int /*<<< orphan*/  GCM_AES_IV_SIZE ; 
 struct omap_aes_reqctx* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct aead_request*,int) ; 

int FUNC3(struct aead_request *req)
{
	struct omap_aes_reqctx *rctx = FUNC0(req);

	FUNC1(rctx->iv, req->iv, GCM_AES_IV_SIZE);
	return FUNC2(req, FLAGS_ENCRYPT | FLAGS_GCM);
}