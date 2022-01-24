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

/* Variables and functions */
 int FUNC0 (struct spi_device*,int,int /*<<< orphan*/ *,int*,int) ; 

__attribute__((used)) static int FUNC1(struct spi_device *spi)
{
	int ret;
	u8 id;

	ret = FUNC0(spi, 0x71, NULL, &id, 1);

	return ret ? ret : id;
}