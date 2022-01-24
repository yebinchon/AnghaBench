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
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,void const*,int) ; 
 int FUNC2 (struct spi_device*,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct spi_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(void *context, const void *data,
				    size_t count)
{
	struct device *dev = context;
	struct spi_device *spi = FUNC3(dev);
	u8 buf[2];

	/* Clear bit 7 to write */
	FUNC1(buf, data, 2);
	buf[0] &= ~0x80;

	FUNC0(dev, "WRITE: %02x %02x\n", buf[0], buf[1]);
	return FUNC2(spi, buf, 2, NULL, 0);
}