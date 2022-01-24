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
struct TYPE_2__ {double FabricAndDRAMBandwidth; int DRAMSpeed; int NumberOfChannels; int DRAMChannelWidth; int FabricClock; int FabricDatapathToDCNDataReturn; } ;
struct display_mode_lib {TYPE_1__ vba; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct display_mode_lib*) ; 
 int /*<<< orphan*/  FUNC1 (struct display_mode_lib*) ; 
 int /*<<< orphan*/  FUNC2 (struct display_mode_lib*) ; 
 int /*<<< orphan*/  FUNC3 (struct display_mode_lib*) ; 
 double FUNC4 (int,int) ; 

void FUNC5(struct display_mode_lib *mode_lib)
{
	FUNC0(mode_lib);
	mode_lib->vba.FabricAndDRAMBandwidth = FUNC4(
		mode_lib->vba.DRAMSpeed * mode_lib->vba.NumberOfChannels * mode_lib->vba.DRAMChannelWidth,
		mode_lib->vba.FabricClock * mode_lib->vba.FabricDatapathToDCNDataReturn) / 1000.0;
	FUNC1(mode_lib);
	FUNC3(mode_lib);
	FUNC2(mode_lib);
}