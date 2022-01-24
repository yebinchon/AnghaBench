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
struct mv_cesa_tdma_desc {int /*<<< orphan*/  byte_cnt; } ;
struct mv_cesa_tdma_chain {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mv_cesa_tdma_desc*) ; 
 int FUNC2 (struct mv_cesa_tdma_desc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct mv_cesa_tdma_desc* FUNC4 (struct mv_cesa_tdma_chain*,int /*<<< orphan*/ ) ; 

int FUNC5(struct mv_cesa_tdma_chain *chain, gfp_t flags)
{
	struct mv_cesa_tdma_desc *tdma;

	tdma = FUNC4(chain, flags);
	if (FUNC1(tdma))
		return FUNC2(tdma);

	tdma->byte_cnt = FUNC3(FUNC0(31));

	return 0;
}