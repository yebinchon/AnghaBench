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
typedef  scalar_t__ u32 ;
struct vas_window {int dummy; } ;
struct coprocessor_status_block {int /*<<< orphan*/  count; } ;
struct coprocessor_request_block {int /*<<< orphan*/  ccw; struct coprocessor_status_block csb; } ;
struct nx842_workmem {int /*<<< orphan*/  start; struct coprocessor_request_block crb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCW_FC_842 ; 
 struct nx842_workmem* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  VAS_RETRIES ; 
 int /*<<< orphan*/  WORKMEM_ALIGN ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  cpu_txwin ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (unsigned char const*,unsigned int,unsigned char*,unsigned int,struct nx842_workmem*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct vas_window* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct coprocessor_request_block*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct vas_window*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct nx842_workmem*,struct coprocessor_status_block*) ; 

__attribute__((used)) static int FUNC13(const unsigned char *in, unsigned int inlen,
				  unsigned char *out, unsigned int *outlenp,
				  void *workmem, int fc)
{
	struct coprocessor_request_block *crb;
	struct coprocessor_status_block *csb;
	struct nx842_workmem *wmem;
	struct vas_window *txwin;
	int ret, i = 0;
	u32 ccw;
	unsigned int outlen = *outlenp;

	wmem = FUNC0(workmem, WORKMEM_ALIGN);

	*outlenp = 0;

	crb = &wmem->crb;
	csb = &crb->csb;

	ret = FUNC5(in, inlen, out, outlen, wmem);
	if (ret)
		return ret;

	ccw = 0;
	ccw = FUNC1(CCW_FC_842, ccw, fc);
	crb->ccw = FUNC3(ccw);

	do {
		wmem->start = FUNC4();
		FUNC7();
		txwin = FUNC9(cpu_txwin);

		/*
		 * VAS copy CRB into L2 cache. Refer <asm/vas.h>.
		 * @crb and @offset.
		 */
		FUNC10(crb, 0);

		/*
		 * VAS paste previously copied CRB to NX.
		 * @txwin, @offset and @last (must be true).
		 */
		ret = FUNC11(txwin, 0, 1);
		FUNC8();
		/*
		 * Retry copy/paste function for VAS failures.
		 */
	} while (ret && (i++ < VAS_RETRIES));

	if (ret) {
		FUNC6("VAS copy/paste failed\n");
		return ret;
	}

	ret = FUNC12(wmem, csb);
	if (!ret)
		*outlenp = FUNC2(csb->count);

	return ret;
}