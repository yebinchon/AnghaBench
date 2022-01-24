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
struct at91_twi_dev {scalar_t__ buf_len; int /*<<< orphan*/ * buf; int /*<<< orphan*/  dev; int /*<<< orphan*/  use_alt_cmd; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_TWI_CR ; 
 int /*<<< orphan*/  AT91_TWI_IDR ; 
 int /*<<< orphan*/  AT91_TWI_STOP ; 
 scalar_t__ AT91_TWI_THR ; 
 int /*<<< orphan*/  AT91_TWI_TXRDY ; 
 int /*<<< orphan*/  FUNC0 (struct at91_twi_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct at91_twi_dev *dev)
{
	if (!dev->buf_len)
		return;

	/* 8bit write works with and without FIFO */
	FUNC2(*dev->buf, dev->base + AT91_TWI_THR);

	/* send stop when last byte has been written */
	if (--dev->buf_len == 0) {
		if (!dev->use_alt_cmd)
			FUNC0(dev, AT91_TWI_CR, AT91_TWI_STOP);
		FUNC0(dev, AT91_TWI_IDR, AT91_TWI_TXRDY);
	}

	FUNC1(dev->dev, "wrote 0x%x, to go %zu\n", *dev->buf, dev->buf_len);

	++dev->buf;
}