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
struct spi_device {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 unsigned char FUNC0 (unsigned char) ; 
 int FUNC1 (struct spi_device*,unsigned char*,int) ; 
 struct spi_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
			     unsigned char reg, unsigned char val)
{
	struct spi_device *spi = FUNC2(dev);
	unsigned char buf[2];

	buf[0] = FUNC0(reg);
	buf[1] = val;

	return FUNC1(spi, buf, sizeof(buf));
}