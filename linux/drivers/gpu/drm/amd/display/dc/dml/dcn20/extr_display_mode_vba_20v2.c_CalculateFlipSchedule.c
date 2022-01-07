
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double* ImmediateFlipBW; } ;
struct display_mode_lib {TYPE_1__ vba; } ;
typedef enum source_format_class { ____Placeholder_source_format_class } source_format_class ;


 int dm_420_10 ;
 int dm_420_8 ;
 double dml_floor (double,int) ;
 unsigned int dml_max (double,unsigned int) ;
 double dml_min (unsigned int,unsigned int) ;

__attribute__((used)) static void CalculateFlipSchedule(
  struct display_mode_lib *mode_lib,
  double UrgentExtraLatency,
  double UrgentLatencyPixelDataOnly,
  unsigned int GPUVMMaxPageTableLevels,
  bool GPUVMEnable,
  double BandwidthAvailableForImmediateFlip,
  unsigned int TotImmediateFlipBytes,
  enum source_format_class SourcePixelFormat,
  unsigned int ImmediateFlipBytes,
  double LineTime,
  double VRatio,
  double Tno_bw,
  double PDEAndMetaPTEBytesFrame,
  unsigned int MetaRowByte,
  unsigned int PixelPTEBytesPerRow,
  bool DCCEnable,
  unsigned int dpte_row_height,
  unsigned int meta_row_height,
  double qual_row_bw,
  double *DestinationLinesToRequestVMInImmediateFlip,
  double *DestinationLinesToRequestRowInImmediateFlip,
  double *final_flip_bw,
  bool *ImmediateFlipSupportedForPipe)
{
 double min_row_time = 0.0;

 if (SourcePixelFormat == dm_420_8 || SourcePixelFormat == dm_420_10) {
  *DestinationLinesToRequestVMInImmediateFlip = 0.0;
  *DestinationLinesToRequestRowInImmediateFlip = 0.0;
  *final_flip_bw = qual_row_bw;
  *ImmediateFlipSupportedForPipe = 1;
 } else {
  double TimeForFetchingMetaPTEImmediateFlip;
  double TimeForFetchingRowInVBlankImmediateFlip;

  if (GPUVMEnable == 1) {
   mode_lib->vba.ImmediateFlipBW[0] = BandwidthAvailableForImmediateFlip
     * ImmediateFlipBytes / TotImmediateFlipBytes;
   TimeForFetchingMetaPTEImmediateFlip =
     dml_max(
       Tno_bw
         + PDEAndMetaPTEBytesFrame
           / mode_lib->vba.ImmediateFlipBW[0],
       dml_max(
         UrgentExtraLatency
           + UrgentLatencyPixelDataOnly
             * (GPUVMMaxPageTableLevels
               - 1),
         LineTime / 4.0));
  } else {
   TimeForFetchingMetaPTEImmediateFlip = 0;
  }

  *DestinationLinesToRequestVMInImmediateFlip = dml_floor(
    4.0 * (TimeForFetchingMetaPTEImmediateFlip / LineTime + 0.125),
    1) / 4.0;

  if ((GPUVMEnable == 1 || DCCEnable == 1)) {
   mode_lib->vba.ImmediateFlipBW[0] = BandwidthAvailableForImmediateFlip
     * ImmediateFlipBytes / TotImmediateFlipBytes;
   TimeForFetchingRowInVBlankImmediateFlip = dml_max(
     (MetaRowByte + PixelPTEBytesPerRow)
       / mode_lib->vba.ImmediateFlipBW[0],
     dml_max(UrgentLatencyPixelDataOnly, LineTime / 4.0));
  } else {
   TimeForFetchingRowInVBlankImmediateFlip = 0;
  }

  *DestinationLinesToRequestRowInImmediateFlip = dml_floor(
    4.0 * (TimeForFetchingRowInVBlankImmediateFlip / LineTime + 0.125),
    1) / 4.0;

  if (GPUVMEnable == 1) {
   *final_flip_bw =
     dml_max(
       PDEAndMetaPTEBytesFrame
         / (*DestinationLinesToRequestVMInImmediateFlip
           * LineTime),
       (MetaRowByte + PixelPTEBytesPerRow)
         / (TimeForFetchingRowInVBlankImmediateFlip
           * LineTime));
  } else if (MetaRowByte + PixelPTEBytesPerRow > 0) {
   *final_flip_bw = (MetaRowByte + PixelPTEBytesPerRow)
     / (TimeForFetchingRowInVBlankImmediateFlip * LineTime);
  } else {
   *final_flip_bw = 0;
  }

  if (GPUVMEnable && !DCCEnable)
   min_row_time = dpte_row_height * LineTime / VRatio;
  else if (!GPUVMEnable && DCCEnable)
   min_row_time = meta_row_height * LineTime / VRatio;
  else
   min_row_time = dml_min(dpte_row_height, meta_row_height) * LineTime
     / VRatio;

  if (*DestinationLinesToRequestVMInImmediateFlip >= 8
    || *DestinationLinesToRequestRowInImmediateFlip >= 16
    || TimeForFetchingMetaPTEImmediateFlip
      + 2 * TimeForFetchingRowInVBlankImmediateFlip
      > min_row_time)
   *ImmediateFlipSupportedForPipe = 0;
  else
   *ImmediateFlipSupportedForPipe = 1;
 }
}
