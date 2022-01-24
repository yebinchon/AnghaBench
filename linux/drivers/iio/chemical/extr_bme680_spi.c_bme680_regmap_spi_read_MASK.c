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
struct bme680_spi_bus_context {struct spi_device* spi; } ;

/* Variables and functions */
 int FUNC0 (struct bme680_spi_bus_context*,int) ; 
 int FUNC1 (struct spi_device*,int*,int,void*,size_t) ; 

__attribute__((used)) static int FUNC2(void *context, const void *reg,
				  size_t reg_size, void *val, size_t val_size)
{
	struct bme680_spi_bus_context *ctx = context;
	struct spi_device *spi = ctx->spi;
	int ret;
	u8 addr = *(const u8 *)reg;

	ret = FUNC0(ctx, addr);
	if (ret)
		return ret;

	addr |= 0x80; /* bit7 = RW = '1' */

	return FUNC1(spi, &addr, 1, val, val_size);
}