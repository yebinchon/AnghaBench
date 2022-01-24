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
struct virt_dma_desc {int /*<<< orphan*/  tx; } ;
struct mdc_tx_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mdc_tx_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mdc_tx_desc*) ; 
 struct mdc_tx_desc* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct virt_dma_desc *vd)
{
	struct mdc_tx_desc *mdesc = FUNC2(&vd->tx);

	FUNC1(mdesc);
	FUNC0(mdesc);
}