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
typedef  int /*<<< orphan*/  u32 ;
struct spi_device {int dummy; } ;
struct mipi_dbi {int /*<<< orphan*/  dc; int /*<<< orphan*/  swap_bytes; struct spi_device* spi; } ;

/* Variables and functions */
 scalar_t__ ILI9225_WRITE_DATA_TO_GRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_device*,size_t) ; 
 int FUNC2 (struct spi_device*,int /*<<< orphan*/ ,unsigned int,scalar_t__*,size_t) ; 

__attribute__((used)) static int FUNC3(struct mipi_dbi *dbi, u8 *cmd, u8 *par,
			       size_t num)
{
	struct spi_device *spi = dbi->spi;
	unsigned int bpw = 8;
	u32 speed_hz;
	int ret;

	FUNC0(dbi->dc, 0);
	speed_hz = FUNC1(spi, 1);
	ret = FUNC2(spi, speed_hz, 8, cmd, 1);
	if (ret || !num)
		return ret;

	if (*cmd == ILI9225_WRITE_DATA_TO_GRAM && !dbi->swap_bytes)
		bpw = 16;

	FUNC0(dbi->dc, 1);
	speed_hz = FUNC1(spi, num);

	return FUNC2(spi, speed_hz, bpw, par, num);
}