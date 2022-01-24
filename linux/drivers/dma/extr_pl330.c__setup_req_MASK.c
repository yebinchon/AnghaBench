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
struct pl330_thread {int /*<<< orphan*/  ev; struct _pl330_req* req; } ;
struct pl330_dmac {int dummy; } ;
struct _xfer_spec {int /*<<< orphan*/  ccr; } ;
struct _pl330_req {int /*<<< orphan*/  mc_bus; int /*<<< orphan*/ * mc_cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct pl330_dmac*,unsigned int,int /*<<< orphan*/ *,struct _xfer_spec*) ; 

__attribute__((used)) static int FUNC5(struct pl330_dmac *pl330, unsigned dry_run,
		      struct pl330_thread *thrd, unsigned index,
		      struct _xfer_spec *pxs)
{
	struct _pl330_req *req = &thrd->req[index];
	u8 *buf = req->mc_cpu;
	int off = 0;

	FUNC0(req->mc_bus);

	/* DMAMOV CCR, ccr */
	off += FUNC2(dry_run, &buf[off], CCR, pxs->ccr);

	off += FUNC4(pl330, dry_run, &buf[off], pxs);

	/* DMASEV peripheral/event */
	off += FUNC3(dry_run, &buf[off], thrd->ev);
	/* DMAEND */
	off += FUNC1(dry_run, &buf[off]);

	return off;
}