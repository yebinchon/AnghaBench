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
typedef  int u8 ;
struct spi_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,void const*,int) ; 
 int FUNC1 (struct spi_device*,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct spi_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(void *context, const void *data,
                                   size_t count)
{
	struct device *dev = context;
	struct spi_device *spi = FUNC2(dev);
	u8 buf[2];

	FUNC0(buf, data, 2);
	/*
	 * The SPI register address (= full register address without bit 7) and
	 * the write command (bit7 = RW = '0')
	 */
	buf[0] &= ~0x80;

	return FUNC1(spi, buf, 2, NULL, 0);
}