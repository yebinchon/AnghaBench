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
struct ms5611_state {int /*<<< orphan*/  client; struct ms5611_osr* pressure_osr; struct ms5611_osr* temp_osr; } ;
struct ms5611_osr {unsigned long conv_usec; int /*<<< orphan*/  cmd; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct ms5611_state* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
						 s32 *temp, s32 *pressure)
{
	int ret;
	struct ms5611_state *st = FUNC1(FUNC0(dev));
	const struct ms5611_osr *osr = st->temp_osr;

	/*
	 * Warning: &osr->cmd MUST be aligned on a word boundary since used as
	 * 2nd argument (void*) of spi_write_then_read.
	 */
	ret = FUNC3(st->client, &osr->cmd, 1, NULL, 0);
	if (ret < 0)
		return ret;

	FUNC4(osr->conv_usec, osr->conv_usec + (osr->conv_usec / 10UL));
	ret = FUNC2(dev, temp);
	if (ret < 0)
		return ret;

	osr = st->pressure_osr;
	ret = FUNC3(st->client, &osr->cmd, 1, NULL, 0);
	if (ret < 0)
		return ret;

	FUNC4(osr->conv_usec, osr->conv_usec + (osr->conv_usec / 10UL));
	return FUNC2(dev, pressure);
}