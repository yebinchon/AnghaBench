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
struct nitrox_kcrypt_request {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nitrox_kcrypt_request*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nitrox_kcrypt_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct nitrox_kcrypt_request*,int,int,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nitrox_kcrypt_request*) ; 
 int FUNC4 (struct scatterlist*,int) ; 

__attribute__((used)) static int FUNC5(struct nitrox_kcrypt_request *nkreq,
			    struct scatterlist *dst, int ivsize, int buflen)
{
	int nents = FUNC4(dst, buflen);
	int ret;

	if (nents < 0)
		return nents;

	/* IV, ORH, COMPLETION entries */
	nents += 3;
	/* Allocate buffer to hold ORH, COMPLETION and output scatterlist
	 * array
	 */
	ret = FUNC0(nkreq, nents);
	if (ret)
		return ret;

	FUNC3(nkreq);
	FUNC1(nkreq);
	FUNC2(nkreq, nents, ivsize, dst, buflen);

	return 0;
}