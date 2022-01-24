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
struct adxl372_state {int act_proc_mode; int /*<<< orphan*/  regmap; } ;
typedef  enum adxl372_act_proc_mode { ____Placeholder_adxl372_act_proc_mode } adxl372_act_proc_mode ;

/* Variables and functions */
 int /*<<< orphan*/  ADXL372_MEASURE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ADXL372_MEASURE_LINKLOOP_MSK ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct adxl372_state *st,
				     enum adxl372_act_proc_mode mode)
{
	int ret;

	ret = FUNC1(st->regmap,
				 ADXL372_MEASURE,
				 ADXL372_MEASURE_LINKLOOP_MSK,
				 FUNC0(mode));
	if (ret < 0)
		return ret;

	st->act_proc_mode = mode;

	return ret;
}