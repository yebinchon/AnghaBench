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
struct omap_aes_dev {int /*<<< orphan*/  dma_lch_in; int /*<<< orphan*/  dma_lch_out; scalar_t__ pio_only; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct omap_aes_dev *dd)
{
	if (dd->pio_only)
		return;

	FUNC0(dd->dma_lch_out);
	FUNC0(dd->dma_lch_in);
}