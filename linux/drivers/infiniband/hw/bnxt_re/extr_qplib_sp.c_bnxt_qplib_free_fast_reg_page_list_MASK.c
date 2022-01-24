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
struct bnxt_qplib_res {int /*<<< orphan*/  pdev; } ;
struct bnxt_qplib_frpl {int /*<<< orphan*/  hwq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC1(struct bnxt_qplib_res *res,
				       struct bnxt_qplib_frpl *frpl)
{
	FUNC0(res->pdev, &frpl->hwq);
	return 0;
}