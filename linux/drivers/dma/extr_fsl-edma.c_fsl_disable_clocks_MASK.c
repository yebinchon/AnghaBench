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
struct fsl_edma_engine {int /*<<< orphan*/ * muxclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct fsl_edma_engine *fsl_edma, int nr_clocks)
{
	int i;

	for (i = 0; i < nr_clocks; i++)
		FUNC0(fsl_edma->muxclk[i]);
}