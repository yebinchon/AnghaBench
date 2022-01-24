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
struct coprocessor_status_block {int /*<<< orphan*/  count; } ;
struct coprocessor_request_block {int /*<<< orphan*/  ccw; struct coprocessor_status_block csb; } ;
struct nx842_workmem {int /*<<< orphan*/  start; struct coprocessor_request_block crb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCW_CI_842 ; 
 int /*<<< orphan*/  CCW_CT ; 
 int /*<<< orphan*/  CCW_FC_842 ; 
 int EBUSY ; 
 int ENODEV ; 
 int EPROTO ; 
#define  ICSWX_BUSY 130 
#define  ICSWX_INITIATED 129 
#define  ICSWX_REJECTED 128 
 int ICSWX_XERS0 ; 
 struct nx842_workmem* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  WORKMEM_ALIGN ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct coprocessor_request_block*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (unsigned char const*,unsigned int,unsigned char*,unsigned int,struct nx842_workmem*) ; 
 int nx842_ct ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (struct nx842_workmem*,struct coprocessor_status_block*) ; 

__attribute__((used)) static int FUNC10(const unsigned char *in, unsigned int inlen,
				  unsigned char *out, unsigned int *outlenp,
				  void *workmem, int fc)
{
	struct coprocessor_request_block *crb;
	struct coprocessor_status_block *csb;
	struct nx842_workmem *wmem;
	int ret;
	u32 ccw;
	unsigned int outlen = *outlenp;

	wmem = FUNC0(workmem, WORKMEM_ALIGN);

	*outlenp = 0;

	/* shoudn't happen, we don't load without a coproc */
	if (!nx842_ct) {
		FUNC8("coprocessor CT is 0");
		return -ENODEV;
	}

	ret = FUNC6(in, inlen, out, outlen, wmem);
	if (ret)
		return ret;

	crb = &wmem->crb;
	csb = &crb->csb;

	/* set up CCW */
	ccw = 0;
	ccw = FUNC1(CCW_CT, ccw, nx842_ct);
	ccw = FUNC1(CCW_CI_842, ccw, 0); /* use 0 for hw auto-selection */
	ccw = FUNC1(CCW_FC_842, ccw, fc);

	wmem->start = FUNC5();

	/* do ICSWX */
	ret = FUNC4(FUNC3(ccw), crb);

	FUNC7("icswx CR %x ccw %x crb->ccw %x\n", ret,
			     (unsigned int)ccw,
			     (unsigned int)FUNC2(crb->ccw));

	/*
	 * NX842 coprocessor sets 3rd bit in CR register with XER[S0].
	 * XER[S0] is the integer summary overflow bit which is nothing
	 * to do NX. Since this bit can be set with other return values,
	 * mask this bit.
	 */
	ret &= ~ICSWX_XERS0;

	switch (ret) {
	case ICSWX_INITIATED:
		ret = FUNC9(wmem, csb);
		break;
	case ICSWX_BUSY:
		FUNC7("842 Coprocessor busy\n");
		ret = -EBUSY;
		break;
	case ICSWX_REJECTED:
		FUNC8("ICSWX rejected\n");
		ret = -EPROTO;
		break;
	}

	if (!ret)
		*outlenp = FUNC2(csb->count);

	return ret;
}