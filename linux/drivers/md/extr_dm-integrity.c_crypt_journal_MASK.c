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
struct skcipher_request {char* iv; struct scatterlist* dst; struct scatterlist* src; } ;
struct scatterlist {int dummy; } ;
struct journal_completion {int /*<<< orphan*/  in_flight; } ;
struct dm_integrity_c {int /*<<< orphan*/  journal_crypt; struct skcipher_request** sk_requests; struct scatterlist** journal_scatterlist; struct scatterlist** journal_io_scatterlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct journal_completion*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,struct skcipher_request*,struct journal_completion*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct dm_integrity_c*,unsigned int,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct dm_integrity_c *ic, bool encrypt, unsigned section,
			  unsigned n_sections, struct journal_completion *comp)
{
	struct scatterlist **source_sg;
	struct scatterlist **target_sg;

	FUNC0(2, &comp->in_flight);

	if (FUNC6(encrypt)) {
		source_sg = ic->journal_scatterlist;
		target_sg = ic->journal_io_scatterlist;
	} else {
		source_sg = ic->journal_io_scatterlist;
		target_sg = ic->journal_scatterlist;
	}

	do {
		struct skcipher_request *req;
		unsigned ivsize;
		char *iv;

		if (FUNC6(encrypt))
			FUNC8(ic, section, true);

		req = ic->sk_requests[section];
		ivsize = FUNC4(ic->journal_crypt);
		iv = req->iv;

		FUNC7(iv, iv + ivsize, ivsize);

		req->src = source_sg[section];
		req->dst = target_sg[section];

		if (FUNC9(FUNC5(encrypt, req, comp)))
			FUNC2(&comp->in_flight);

		section++;
		n_sections--;
	} while (n_sections);

	FUNC1(&comp->in_flight);
	FUNC3(comp);
}