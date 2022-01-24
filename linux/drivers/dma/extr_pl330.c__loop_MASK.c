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
typedef  int /*<<< orphan*/  u8 ;
struct pl330_dmac {int dummy; } ;
struct _xfer_spec {int dummy; } ;
struct _arg_LPEND {int forever; int loop; int bjump; void* cond; } ;

/* Variables and functions */
 void* ALWAYS ; 
 int FUNC0 (struct pl330_dmac*,unsigned int,int /*<<< orphan*/ *,struct _xfer_spec const*,int) ; 
 int FUNC1 (unsigned int,int /*<<< orphan*/ *,int,unsigned int) ; 
 int FUNC2 (unsigned int,int /*<<< orphan*/ *,struct _arg_LPEND*) ; 

__attribute__((used)) static inline int FUNC3(struct pl330_dmac *pl330, unsigned dry_run, u8 buf[],
		unsigned long *bursts, const struct _xfer_spec *pxs)
{
	int cyc, cycmax, szlp, szlpend, szbrst, off;
	unsigned lcnt0, lcnt1, ljmp0, ljmp1;
	struct _arg_LPEND lpend;

	if (*bursts == 1)
		return FUNC0(pl330, dry_run, buf, pxs, 1);

	/* Max iterations possible in DMALP is 256 */
	if (*bursts >= 256*256) {
		lcnt1 = 256;
		lcnt0 = 256;
		cyc = *bursts / lcnt1 / lcnt0;
	} else if (*bursts > 256) {
		lcnt1 = 256;
		lcnt0 = *bursts / lcnt1;
		cyc = 1;
	} else {
		lcnt1 = *bursts;
		lcnt0 = 0;
		cyc = 1;
	}

	szlp = FUNC1(1, buf, 0, 0);
	szbrst = FUNC0(pl330, 1, buf, pxs, 1);

	lpend.cond = ALWAYS;
	lpend.forever = false;
	lpend.loop = 0;
	lpend.bjump = 0;
	szlpend = FUNC2(1, buf, &lpend);

	if (lcnt0) {
		szlp *= 2;
		szlpend *= 2;
	}

	/*
	 * Max bursts that we can unroll due to limit on the
	 * size of backward jump that can be encoded in DMALPEND
	 * which is 8-bits and hence 255
	 */
	cycmax = (255 - (szlp + szlpend)) / szbrst;

	cyc = (cycmax < cyc) ? cycmax : cyc;

	off = 0;

	if (lcnt0) {
		off += FUNC1(dry_run, &buf[off], 0, lcnt0);
		ljmp0 = off;
	}

	off += FUNC1(dry_run, &buf[off], 1, lcnt1);
	ljmp1 = off;

	off += FUNC0(pl330, dry_run, &buf[off], pxs, cyc);

	lpend.cond = ALWAYS;
	lpend.forever = false;
	lpend.loop = 1;
	lpend.bjump = off - ljmp1;
	off += FUNC2(dry_run, &buf[off], &lpend);

	if (lcnt0) {
		lpend.cond = ALWAYS;
		lpend.forever = false;
		lpend.loop = 0;
		lpend.bjump = off - ljmp0;
		off += FUNC2(dry_run, &buf[off], &lpend);
	}

	*bursts = lcnt1 * cyc;
	if (lcnt0)
		*bursts *= lcnt0;

	return off;
}