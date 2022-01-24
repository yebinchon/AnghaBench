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
struct atmel_tdes_dev {scalar_t__ buf_in; scalar_t__ buf_out; int /*<<< orphan*/  buflen; int /*<<< orphan*/  dma_addr_in; int /*<<< orphan*/  dev; int /*<<< orphan*/  dma_addr_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

__attribute__((used)) static void FUNC2(struct atmel_tdes_dev *dd)
{
	FUNC0(dd->dev, dd->dma_addr_out, dd->buflen,
			 DMA_FROM_DEVICE);
	FUNC0(dd->dev, dd->dma_addr_in, dd->buflen,
		DMA_TO_DEVICE);
	FUNC1((unsigned long)dd->buf_out);
	FUNC1((unsigned long)dd->buf_in);
}