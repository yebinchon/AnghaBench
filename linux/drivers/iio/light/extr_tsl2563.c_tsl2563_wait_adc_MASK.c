#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tsl2563_chip {TYPE_1__* gainlevel; } ;
struct TYPE_2__ {int gaintime; } ;

/* Variables and functions */
#define  TSL2563_TIMING_100MS 129 
#define  TSL2563_TIMING_13MS 128 
 int TSL2563_TIMING_MASK ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct tsl2563_chip *chip)
{
	unsigned int delay;

	switch (chip->gainlevel->gaintime & TSL2563_TIMING_MASK) {
	case TSL2563_TIMING_13MS:
		delay = 14;
		break;
	case TSL2563_TIMING_100MS:
		delay = 101;
		break;
	default:
		delay = 402;
	}
	/*
	 * TODO: Make sure that we wait at least required delay but why we
	 * have to extend it one tick more?
	 */
	FUNC1(FUNC0(delay) + 2);
}