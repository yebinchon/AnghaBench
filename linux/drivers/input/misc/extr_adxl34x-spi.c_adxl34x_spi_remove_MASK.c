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
struct adxl34x {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct adxl34x*) ; 
 struct adxl34x* FUNC1 (struct spi_device*) ; 

__attribute__((used)) static int FUNC2(struct spi_device *spi)
{
	struct adxl34x *ac = FUNC1(spi);

	return FUNC0(ac);
}