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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct spi_device*,void*,int) ; 
 struct spi_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
				 int count, void *buf)
{
	struct spi_device *spi = FUNC3(dev);
	int i, ret;
	unsigned short *data = buf;
	__be16 *bdata = buf;

	ret = FUNC2(spi, buf, count * 2);
	if (ret < 0) {
		FUNC1(&spi->dev, "SPI read error\n");
		return ret;
	}

	for (i = 0; i < count; i++)
		data[i] = FUNC0(bdata[i]);

	return 0;
}