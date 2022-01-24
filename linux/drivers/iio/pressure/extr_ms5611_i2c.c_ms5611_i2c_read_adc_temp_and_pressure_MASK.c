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
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ms5611_state* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ms5611_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
						 s32 *temp, s32 *pressure)
{
	int ret;
	struct ms5611_state *st = FUNC2(FUNC0(dev));
	const struct ms5611_osr *osr = st->temp_osr;

	ret = FUNC1(st->client, osr->cmd);
	if (ret < 0)
		return ret;

	FUNC4(osr->conv_usec, osr->conv_usec + (osr->conv_usec / 10UL));
	ret = FUNC3(st, temp);
	if (ret < 0)
		return ret;

	osr = st->pressure_osr;
	ret = FUNC1(st->client, osr->cmd);
	if (ret < 0)
		return ret;

	FUNC4(osr->conv_usec, osr->conv_usec + (osr->conv_usec / 10UL));
	return FUNC3(st, pressure);
}