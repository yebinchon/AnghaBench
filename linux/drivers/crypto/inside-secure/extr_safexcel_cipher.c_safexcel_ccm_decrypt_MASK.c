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
struct safexcel_cipher_req {int dummy; } ;
struct aead_request {int* iv; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SAFEXCEL_DECRYPT ; 
 struct safexcel_cipher_req* FUNC0 (struct aead_request*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct safexcel_cipher_req*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct aead_request *req)
{
	struct safexcel_cipher_req *creq = FUNC0(req);

	if (req->iv[0] < 1 || req->iv[0] > 7)
		return -EINVAL;

	return FUNC1(&req->base, creq, SAFEXCEL_DECRYPT);
}