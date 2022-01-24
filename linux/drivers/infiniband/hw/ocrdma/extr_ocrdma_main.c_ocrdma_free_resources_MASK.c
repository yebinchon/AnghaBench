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
struct ocrdma_dev {int /*<<< orphan*/  cq_tbl; int /*<<< orphan*/  qp_tbl; int /*<<< orphan*/  stag_arr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ocrdma_dev*) ; 

__attribute__((used)) static void FUNC2(struct ocrdma_dev *dev)
{
	FUNC1(dev);
	FUNC0(dev->stag_arr);
	FUNC0(dev->qp_tbl);
	FUNC0(dev->cq_tbl);
}