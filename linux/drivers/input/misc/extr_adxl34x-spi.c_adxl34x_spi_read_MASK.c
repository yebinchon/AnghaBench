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

/* Variables and functions */
 unsigned char FUNC0 (unsigned char) ; 
 int FUNC1 (struct spi_device*,unsigned char) ; 
 struct spi_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, unsigned char reg)
{
	struct spi_device *spi = FUNC2(dev);
	unsigned char cmd;

	cmd = FUNC0(reg);

	return FUNC1(spi, cmd);
}