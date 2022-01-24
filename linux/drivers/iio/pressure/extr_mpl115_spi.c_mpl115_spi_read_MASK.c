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
typedef  scalar_t__ u8 ;
struct spi_transfer {int* rx_buf; int len; void** tx_buf; } ;
struct spi_device {int dummy; } ;
struct mpl115_spi_buf {int* rx; void** tx; } ;
struct device {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 struct mpl115_spi_buf* FUNC1 (struct spi_device*) ; 
 int FUNC2 (struct spi_device*,struct spi_transfer*,int) ; 
 struct spi_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, u8 address)
{
	struct spi_device *spi = FUNC3(dev);
	struct mpl115_spi_buf *buf = FUNC1(spi);
	struct spi_transfer xfer = {
		.tx_buf = buf->tx,
		.rx_buf = buf->rx,
		.len = 4,
	};
	int ret;

	buf->tx[0] = FUNC0(address);
	buf->tx[2] = FUNC0(address + 1);

	ret = FUNC2(spi, &xfer, 1);
	if (ret)
		return ret;

	return (buf->rx[1] << 8) | buf->rx[3];
}