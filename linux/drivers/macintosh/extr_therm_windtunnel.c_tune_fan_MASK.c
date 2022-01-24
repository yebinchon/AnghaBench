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
struct TYPE_2__ {int fan_level; scalar_t__ casetemp; scalar_t__ temp; int /*<<< orphan*/  fan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 
 TYPE_1__ x ; 

__attribute__((used)) static void
FUNC3( int fan_setting )
{
	int val = (fan_setting << 3) | 7;

	/* write_reg( x.fan, 0x24, val, 1 ); */
	FUNC2( x.fan, 0x25, val, 1 );
	FUNC2( x.fan, 0x20, 0, 1 );
	FUNC0("CPU-temp: ", x.temp );
	if( x.casetemp )
		FUNC0(", Case: ", x.casetemp );
	FUNC1(",  Fan: %d (tuned %+d)\n", 11-fan_setting, x.fan_level-fan_setting );

	x.fan_level = fan_setting;
}