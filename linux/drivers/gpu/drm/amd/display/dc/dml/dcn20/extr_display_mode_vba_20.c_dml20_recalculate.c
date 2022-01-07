
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double FabricAndDRAMBandwidth; int DRAMSpeed; int NumberOfChannels; int DRAMChannelWidth; int FabricClock; int FabricDatapathToDCNDataReturn; } ;
struct display_mode_lib {TYPE_1__ vba; } ;


 int ModeSupportAndSystemConfiguration (struct display_mode_lib*) ;
 int PixelClockAdjustmentForProgressiveToInterlaceUnit (struct display_mode_lib*) ;
 int dml20_DISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculation (struct display_mode_lib*) ;
 int dml20_DisplayPipeConfiguration (struct display_mode_lib*) ;
 double dml_min (int,int) ;

void dml20_recalculate(struct display_mode_lib *mode_lib)
{
 ModeSupportAndSystemConfiguration(mode_lib);
 mode_lib->vba.FabricAndDRAMBandwidth = dml_min(
  mode_lib->vba.DRAMSpeed * mode_lib->vba.NumberOfChannels * mode_lib->vba.DRAMChannelWidth,
  mode_lib->vba.FabricClock * mode_lib->vba.FabricDatapathToDCNDataReturn) / 1000.0;
 PixelClockAdjustmentForProgressiveToInterlaceUnit(mode_lib);
 dml20_DisplayPipeConfiguration(mode_lib);
 dml20_DISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculation(mode_lib);
}
