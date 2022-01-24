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
struct scatterlist {int dummy; } ;
struct nitrox_kcrypt_request {int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int FUNC0 (struct nitrox_kcrypt_request*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nitrox_kcrypt_request*,int,int,struct scatterlist*,int) ; 
 int FUNC3 (struct scatterlist*,int) ; 

__attribute__((used)) static int FUNC4(struct nitrox_kcrypt_request *nkreq,
			    struct scatterlist *src, char *iv, int ivsize,
			    int buflen)
{
	int nents = FUNC3(src, buflen);
	int ret;

	if (nents < 0)
		return nents;

	/* IV entry */
	nents += 1;
	/* Allocate buffer to hold IV and input scatterlist array */
	ret = FUNC0(nkreq, nents, ivsize);
	if (ret)
		return ret;

	FUNC1(nkreq->src, iv, ivsize);
	FUNC2(nkreq, nents, ivsize, src, buflen);

	return 0;
}