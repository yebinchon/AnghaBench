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
struct skcipher_request {int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  dst; } ;
struct nitrox_kcrypt_request {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nitrox_kcrypt_request*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nitrox_kcrypt_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct nitrox_kcrypt_request*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nitrox_kcrypt_request*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct nitrox_kcrypt_request* FUNC5 (struct skcipher_request*) ; 

__attribute__((used)) static int FUNC6(struct skcipher_request *skreq, int ivsize)
{
	struct nitrox_kcrypt_request *nkreq = FUNC5(skreq);
	int nents = FUNC4(skreq->dst) + 3;
	int ret;

	/* Allocate buffer to hold ORH, COMPLETION and output scatterlist
	 * array
	 */
	ret = FUNC0(nkreq, nents);
	if (ret)
		return ret;

	FUNC3(nkreq);
	FUNC1(nkreq);
	FUNC2(nkreq, nents, ivsize, skreq->dst,
			       skreq->cryptlen);

	return 0;
}