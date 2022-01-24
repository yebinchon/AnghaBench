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
struct skcipher_request {int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  src; int /*<<< orphan*/  iv; } ;
struct nitrox_kcrypt_request {int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int FUNC0 (struct nitrox_kcrypt_request*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nitrox_kcrypt_request*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct nitrox_kcrypt_request* FUNC4 (struct skcipher_request*) ; 

__attribute__((used)) static int FUNC5(struct skcipher_request *skreq, int ivsize)
{
	struct nitrox_kcrypt_request *nkreq = FUNC4(skreq);
	int nents = FUNC3(skreq->src) + 1;
	int ret;

	/* Allocate buffer to hold IV and input scatterlist array */
	ret = FUNC0(nkreq, nents, ivsize);
	if (ret)
		return ret;

	FUNC1(nkreq->src, skreq->iv, ivsize);
	FUNC2(nkreq, nents, ivsize, skreq->src,
			       skreq->cryptlen);

	return 0;
}