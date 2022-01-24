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
struct se_crypto_request {struct scatterlist* src; } ;
struct scatterlist {int dummy; } ;
struct nitrox_kcrypt_request {char* src; struct se_crypto_request creq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scatterlist*,struct scatterlist*,int) ; 
 struct scatterlist* FUNC1 (struct scatterlist*,char*,int) ; 
 struct scatterlist* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,int) ; 

__attribute__((used)) static inline void FUNC4(struct nitrox_kcrypt_request *nkreq,
					  int nents, int ivsize,
					  struct scatterlist *src, int buflen)
{
	char *iv = nkreq->src;
	struct scatterlist *sg;
	struct se_crypto_request *creq = &nkreq->creq;

	creq->src = FUNC2(iv, ivsize);
	sg = creq->src;
	FUNC3(sg, nents);

	/* Input format:
	 * +----+----------------+
	 * | IV | SRC sg entries |
	 * +----+----------------+
	 */

	/* IV */
	sg = FUNC1(sg, iv, ivsize);
	/* SRC entries */
	FUNC0(sg, src, buflen);
}