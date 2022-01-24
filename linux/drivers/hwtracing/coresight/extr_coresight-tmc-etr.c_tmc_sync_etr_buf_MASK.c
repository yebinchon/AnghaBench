#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct tmc_drvdata {TYPE_1__* csdev; scalar_t__ base; struct etr_buf* etr_buf; } ;
struct etr_buf {int full; TYPE_2__* ops; scalar_t__ len; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* sync ) (struct etr_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ TMC_STS ; 
 int TMC_STS_FULL ; 
 int TMC_STS_MEMERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct etr_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tmc_drvdata*) ; 
 int /*<<< orphan*/  FUNC6 (struct tmc_drvdata*) ; 

__attribute__((used)) static void FUNC7(struct tmc_drvdata *drvdata)
{
	struct etr_buf *etr_buf = drvdata->etr_buf;
	u64 rrp, rwp;
	u32 status;

	rrp = FUNC5(drvdata);
	rwp = FUNC6(drvdata);
	status = FUNC3(drvdata->base + TMC_STS);

	/*
	 * If there were memory errors in the session, truncate the
	 * buffer.
	 */
	if (FUNC1(status & TMC_STS_MEMERR)) {
		FUNC2(&drvdata->csdev->dev,
			"tmc memory error detected, truncating buffer\n");
		etr_buf->len = 0;
		etr_buf->full = 0;
		return;
	}

	etr_buf->full = status & TMC_STS_FULL;

	FUNC0(!etr_buf->ops || !etr_buf->ops->sync);

	etr_buf->ops->sync(etr_buf, rrp, rwp);
}