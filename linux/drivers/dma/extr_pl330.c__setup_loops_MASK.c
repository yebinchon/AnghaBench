#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct pl330_xfer {int bytes; } ;
struct pl330_dmac {int dummy; } ;
struct _xfer_spec {int /*<<< orphan*/  ccr; TYPE_1__* desc; } ;
struct TYPE_2__ {struct pl330_xfer px; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct pl330_dmac*,unsigned int,int /*<<< orphan*/ *,struct _xfer_spec const*,int) ; 
 scalar_t__ FUNC4 (struct pl330_dmac*,unsigned int,int /*<<< orphan*/ *,unsigned long*,struct _xfer_spec const*) ; 

__attribute__((used)) static inline int FUNC5(struct pl330_dmac *pl330,
			       unsigned dry_run, u8 buf[],
			       const struct _xfer_spec *pxs)
{
	struct pl330_xfer *x = &pxs->desc->px;
	u32 ccr = pxs->ccr;
	unsigned long c, bursts = FUNC2(x->bytes, ccr);
	int num_dregs = (x->bytes - FUNC1(bursts, ccr)) /
		FUNC0(ccr);
	int off = 0;

	while (bursts) {
		c = bursts;
		off += FUNC4(pl330, dry_run, &buf[off], &c, pxs);
		bursts -= c;
	}
	off += FUNC3(pl330, dry_run, &buf[off], pxs, num_dregs);

	return off;
}