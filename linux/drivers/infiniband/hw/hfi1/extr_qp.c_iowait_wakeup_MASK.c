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
struct rvt_qp {int dummy; } ;
struct iowait {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RVT_S_WAIT_DMA_DESC ; 
 int SDMA_AVAIL_REASON ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rvt_qp*,int /*<<< orphan*/ ) ; 
 struct rvt_qp* FUNC2 (struct iowait*) ; 

__attribute__((used)) static void FUNC3(struct iowait *wait, int reason)
{
	struct rvt_qp *qp = FUNC2(wait);

	FUNC0(reason != SDMA_AVAIL_REASON);
	FUNC1(qp, RVT_S_WAIT_DMA_DESC);
}