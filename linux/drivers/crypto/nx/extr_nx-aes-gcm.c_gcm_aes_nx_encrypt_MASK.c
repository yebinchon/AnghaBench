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
struct nx_gcm_rctx {char* iv; } ;
struct aead_request {int /*<<< orphan*/  assoclen; int /*<<< orphan*/  iv; } ;

/* Variables and functions */
 int /*<<< orphan*/  GCM_AES_IV_SIZE ; 
 struct nx_gcm_rctx* FUNC0 (struct aead_request*) ; 
 int FUNC1 (struct aead_request*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct aead_request *req)
{
	struct nx_gcm_rctx *rctx = FUNC0(req);
	char *iv = rctx->iv;

	FUNC2(iv, req->iv, GCM_AES_IV_SIZE);

	return FUNC1(req, 1, req->assoclen);
}