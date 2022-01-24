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
typedef  scalar_t__ u32 ;
struct st_fdma_dev {long dreq_mask; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ req_line; } ;
struct st_fdma_chan {TYPE_1__ cfg; struct st_fdma_dev* fdev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ ST_FDMA_NR_DREQS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (scalar_t__,long*) ; 

__attribute__((used)) static int FUNC3(struct st_fdma_chan *fchan)
{
	struct st_fdma_dev *fdev = fchan->fdev;
	u32 req_line_cfg = fchan->cfg.req_line;
	u32 dreq_line;
	int try = 0;

	/*
	 * dreq_mask is shared for n channels of fdma, so all accesses must be
	 * atomic. if the dreq_mask is changed between ffz and set_bit,
	 * we retry
	 */
	do {
		if (fdev->dreq_mask == ~0L) {
			FUNC1(fdev->dev, "No req lines available\n");
			return -EINVAL;
		}

		if (try || req_line_cfg >= ST_FDMA_NR_DREQS) {
			FUNC1(fdev->dev, "Invalid or used req line\n");
			return -EINVAL;
		} else {
			dreq_line = req_line_cfg;
		}

		try++;
	} while (FUNC2(dreq_line, &fdev->dreq_mask));

	FUNC0(fdev->dev, "get dreq_line:%d mask:%#lx\n",
		dreq_line, fdev->dreq_mask);

	return dreq_line;
}