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
struct se_crypto_request {char* orh; char* comp; struct scatterlist* dst; } ;
struct scatterlist {int dummy; } ;
struct nitrox_kcrypt_request {char* src; int /*<<< orphan*/  dst; struct se_crypto_request creq; } ;

/* Variables and functions */
 int COMP_HLEN ; 
 int ORH_HLEN ; 
 struct scatterlist* FUNC0 (struct scatterlist*,struct scatterlist*,int) ; 
 struct scatterlist* FUNC1 (struct scatterlist*,char*,int) ; 
 struct scatterlist* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,int) ; 

__attribute__((used)) static inline void FUNC4(struct nitrox_kcrypt_request *nkreq,
					  int nents, int ivsize,
					  struct scatterlist *dst, int buflen)
{
	struct se_crypto_request *creq = &nkreq->creq;
	struct scatterlist *sg;
	char *iv = nkreq->src;

	creq->dst = FUNC2(nkreq->dst);
	sg = creq->dst;
	FUNC3(sg, nents);

	/* Output format:
	 * +-----+----+----------------+-----------------+
	 * | ORH | IV | DST sg entries | COMPLETION Bytes|
	 * +-----+----+----------------+-----------------+
	 */

	/* ORH */
	sg = FUNC1(sg, creq->orh, ORH_HLEN);
	/* IV */
	sg = FUNC1(sg, iv, ivsize);
	/* DST entries */
	sg = FUNC0(sg, dst, buflen);
	/* COMPLETION Bytes */
	FUNC1(sg, creq->comp, COMP_HLEN);
}