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
struct dw_dma_chan {int mask; } ;
struct dw_dma {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH_EN ; 
 int /*<<< orphan*/  FUNC0 (struct dw_dma*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct dw_dma*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct dw_dma *dw, struct dw_dma_chan *dwc)
{
	FUNC0(dw, CH_EN, dwc->mask);
	while (FUNC2(dw, CH_EN) & dwc->mask)
		FUNC1();
}