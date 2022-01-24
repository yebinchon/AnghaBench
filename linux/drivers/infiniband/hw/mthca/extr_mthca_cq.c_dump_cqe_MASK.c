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
struct mthca_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mthca_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mthca_dev *dev, void *cqe_ptr)
{
	__be32 *cqe = cqe_ptr;

	(void) cqe;	/* avoid warning if mthca_dbg compiled away... */
	FUNC1(dev, "CQE contents %08x %08x %08x %08x %08x %08x %08x %08x\n",
		  FUNC0(cqe[0]), FUNC0(cqe[1]), FUNC0(cqe[2]),
		  FUNC0(cqe[3]), FUNC0(cqe[4]), FUNC0(cqe[5]),
		  FUNC0(cqe[6]), FUNC0(cqe[7]));
}