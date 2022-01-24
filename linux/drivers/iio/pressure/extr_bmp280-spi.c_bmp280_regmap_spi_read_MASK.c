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
 int FUNC0 (struct spi_device*,void const*,size_t,void*,size_t) ; 
 struct spi_device* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(void *context, const void *reg,
                                  size_t reg_size, void *val, size_t val_size)
{
	struct device *dev = context;
	struct spi_device *spi = FUNC1(dev);

	return FUNC0(spi, reg, reg_size, val, val_size);
}