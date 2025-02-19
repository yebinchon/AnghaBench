
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display_mode_lib {int dummy; } ;


 double dml_ceil (double,int) ;
 double dml_floor (double,int) ;
 double dml_max (double,double) ;
 int dml_print (char*,unsigned int) ;

__attribute__((used)) static bool CalculatePrefetchSchedule(
  struct display_mode_lib *mode_lib,
  double DPPCLK,
  double DISPCLK,
  double PixelClock,
  double DCFCLKDeepSleep,
  unsigned int DPPPerPlane,
  unsigned int NumberOfCursors,
  unsigned int VBlank,
  unsigned int HTotal,
  unsigned int MaxInterDCNTileRepeaters,
  unsigned int VStartup,
  unsigned int PageTableLevels,
  bool GPUVMEnable,
  bool DynamicMetadataEnable,
  unsigned int DynamicMetadataLinesBeforeActiveRequired,
  unsigned int DynamicMetadataTransmittedBytes,
  bool DCCEnable,
  double UrgentLatencyPixelDataOnly,
  double UrgentExtraLatency,
  double TCalc,
  unsigned int PDEAndMetaPTEBytesFrame,
  unsigned int MetaRowByte,
  unsigned int PixelPTEBytesPerRow,
  double PrefetchSourceLinesY,
  unsigned int SwathWidthY,
  double BytePerPixelDETY,
  double VInitPreFillY,
  unsigned int MaxNumSwathY,
  double PrefetchSourceLinesC,
  double BytePerPixelDETC,
  double VInitPreFillC,
  unsigned int MaxNumSwathC,
  unsigned int SwathHeightY,
  unsigned int SwathHeightC,
  double TWait,
  bool XFCEnabled,
  double XFCRemoteSurfaceFlipDelay,
  bool InterlaceEnable,
  bool ProgressiveToInterlaceUnitInOPP,
  double DSTXAfterScaler,
  double DSTYAfterScaler,
  double *DestinationLinesForPrefetch,
  double *PrefetchBandwidth,
  double *DestinationLinesToRequestVMInVBlank,
  double *DestinationLinesToRequestRowInVBlank,
  double *VRatioPrefetchY,
  double *VRatioPrefetchC,
  double *RequiredPrefetchPixDataBW,
  double *Tno_bw,
  unsigned int *VUpdateOffsetPix,
  double *VUpdateWidthPix,
  double *VReadyOffsetPix)
{
 bool MyError = 0;
 double TotalRepeaterDelayTime;
 double Tdm, LineTime, Tsetup;
 double dst_y_prefetch_equ;
 double Tsw_oto;
 double prefetch_bw_oto;
 double Tvm_oto;
 double Tr0_oto;
 double Tpre_oto;
 double dst_y_prefetch_oto;
 double TimeForFetchingMetaPTE = 0;
 double TimeForFetchingRowInVBlank = 0;
 double LinesToRequestPrefetchPixelData = 0;

 *VUpdateOffsetPix = dml_ceil(HTotal / 4.0, 1);
 TotalRepeaterDelayTime = MaxInterDCNTileRepeaters * (2.0 / DPPCLK + 3.0 / DISPCLK);
 *VUpdateWidthPix = (14.0 / DCFCLKDeepSleep + 12.0 / DPPCLK + TotalRepeaterDelayTime)
   * PixelClock;

 *VReadyOffsetPix = dml_max(
   150.0 / DPPCLK,
   TotalRepeaterDelayTime + 20.0 / DCFCLKDeepSleep + 10.0 / DPPCLK)
   * PixelClock;

 Tsetup = (double) (*VUpdateOffsetPix + *VUpdateWidthPix + *VReadyOffsetPix) / PixelClock;

 LineTime = (double) HTotal / PixelClock;

 if (DynamicMetadataEnable) {
  double Tdmbf, Tdmec, Tdmsks;

  Tdm = dml_max(0.0, UrgentExtraLatency - TCalc);
  Tdmbf = DynamicMetadataTransmittedBytes / 4.0 / DISPCLK;
  Tdmec = LineTime;
  if (DynamicMetadataLinesBeforeActiveRequired == 0)
   Tdmsks = VBlank * LineTime / 2.0;
  else
   Tdmsks = DynamicMetadataLinesBeforeActiveRequired * LineTime;
  if (InterlaceEnable && !ProgressiveToInterlaceUnitInOPP)
   Tdmsks = Tdmsks / 2;
  if (VStartup * LineTime
    < Tsetup + TWait + UrgentExtraLatency + Tdmbf + Tdmec + Tdmsks) {
   MyError = 1;
  }
 } else
  Tdm = 0;

 if (GPUVMEnable) {
  if (PageTableLevels == 4)
   *Tno_bw = UrgentExtraLatency + UrgentLatencyPixelDataOnly;
  else if (PageTableLevels == 3)
   *Tno_bw = UrgentExtraLatency;
  else
   *Tno_bw = 0;
 } else if (DCCEnable)
  *Tno_bw = LineTime;
 else
  *Tno_bw = LineTime / 4;

 dst_y_prefetch_equ = VStartup - dml_max(TCalc + TWait, XFCRemoteSurfaceFlipDelay) / LineTime
   - (Tsetup + Tdm) / LineTime
   - (DSTYAfterScaler + DSTXAfterScaler / HTotal);

 Tsw_oto = dml_max(PrefetchSourceLinesY, PrefetchSourceLinesC) * LineTime;

 prefetch_bw_oto = (MetaRowByte + PixelPTEBytesPerRow
   + PrefetchSourceLinesY * SwathWidthY * dml_ceil(BytePerPixelDETY, 1)
   + PrefetchSourceLinesC * SwathWidthY / 2 * dml_ceil(BytePerPixelDETC, 2))
   / Tsw_oto;

 if (GPUVMEnable == 1) {
  Tvm_oto =
    dml_max(
      *Tno_bw + PDEAndMetaPTEBytesFrame / prefetch_bw_oto,
      dml_max(
        UrgentExtraLatency
          + UrgentLatencyPixelDataOnly
            * (PageTableLevels
              - 1),
        LineTime / 4.0));
 } else
  Tvm_oto = LineTime / 4.0;

 if ((GPUVMEnable == 1 || DCCEnable == 1)) {
  Tr0_oto = dml_max(
    (MetaRowByte + PixelPTEBytesPerRow) / prefetch_bw_oto,
    dml_max(UrgentLatencyPixelDataOnly, dml_max(LineTime - Tvm_oto, LineTime / 4)));
 } else
  Tr0_oto = LineTime - Tvm_oto;

 Tpre_oto = Tvm_oto + Tr0_oto + Tsw_oto;

 dst_y_prefetch_oto = Tpre_oto / LineTime;

 if (dst_y_prefetch_oto < dst_y_prefetch_equ)
  *DestinationLinesForPrefetch = dst_y_prefetch_oto;
 else
  *DestinationLinesForPrefetch = dst_y_prefetch_equ;

 *DestinationLinesForPrefetch = dml_floor(4.0 * (*DestinationLinesForPrefetch + 0.125), 1)
   / 4;

 dml_print("DML: VStartup: %d\n", VStartup);
 dml_print("DML: TCalc: %f\n", TCalc);
 dml_print("DML: TWait: %f\n", TWait);
 dml_print("DML: XFCRemoteSurfaceFlipDelay: %f\n", XFCRemoteSurfaceFlipDelay);
 dml_print("DML: LineTime: %f\n", LineTime);
 dml_print("DML: Tsetup: %f\n", Tsetup);
 dml_print("DML: Tdm: %f\n", Tdm);
 dml_print("DML: DSTYAfterScaler: %f\n", DSTYAfterScaler);
 dml_print("DML: DSTXAfterScaler: %f\n", DSTXAfterScaler);
 dml_print("DML: HTotal: %d\n", HTotal);

 *PrefetchBandwidth = 0;
 *DestinationLinesToRequestVMInVBlank = 0;
 *DestinationLinesToRequestRowInVBlank = 0;
 *VRatioPrefetchY = 0;
 *VRatioPrefetchC = 0;
 *RequiredPrefetchPixDataBW = 0;
 if (*DestinationLinesForPrefetch > 1) {
  *PrefetchBandwidth = (PDEAndMetaPTEBytesFrame + 2 * MetaRowByte
    + 2 * PixelPTEBytesPerRow
    + PrefetchSourceLinesY * SwathWidthY * dml_ceil(BytePerPixelDETY, 1)
    + PrefetchSourceLinesC * SwathWidthY / 2
      * dml_ceil(BytePerPixelDETC, 2))
    / (*DestinationLinesForPrefetch * LineTime - *Tno_bw);
  if (GPUVMEnable) {
   TimeForFetchingMetaPTE =
     dml_max(
       *Tno_bw
         + (double) PDEAndMetaPTEBytesFrame
           / *PrefetchBandwidth,
       dml_max(
         UrgentExtraLatency
           + UrgentLatencyPixelDataOnly
             * (PageTableLevels
               - 1),
         LineTime / 4));
  } else {
   if (NumberOfCursors > 0 || XFCEnabled)
    TimeForFetchingMetaPTE = LineTime / 4;
   else
    TimeForFetchingMetaPTE = 0.0;
  }

  if ((GPUVMEnable == 1 || DCCEnable == 1)) {
   TimeForFetchingRowInVBlank =
     dml_max(
       (MetaRowByte + PixelPTEBytesPerRow)
         / *PrefetchBandwidth,
       dml_max(
         UrgentLatencyPixelDataOnly,
         dml_max(
           LineTime
             - TimeForFetchingMetaPTE,
           LineTime
             / 4.0)));
  } else {
   if (NumberOfCursors > 0 || XFCEnabled)
    TimeForFetchingRowInVBlank = LineTime - TimeForFetchingMetaPTE;
   else
    TimeForFetchingRowInVBlank = 0.0;
  }

  *DestinationLinesToRequestVMInVBlank = dml_floor(
    4.0 * (TimeForFetchingMetaPTE / LineTime + 0.125),
    1) / 4.0;

  *DestinationLinesToRequestRowInVBlank = dml_floor(
    4.0 * (TimeForFetchingRowInVBlank / LineTime + 0.125),
    1) / 4.0;

  LinesToRequestPrefetchPixelData =
    *DestinationLinesForPrefetch
      - ((NumberOfCursors > 0 || GPUVMEnable
        || DCCEnable) ?
        (*DestinationLinesToRequestVMInVBlank
          + *DestinationLinesToRequestRowInVBlank) :
        0.0);

  if (LinesToRequestPrefetchPixelData > 0) {

   *VRatioPrefetchY = (double) PrefetchSourceLinesY
     / LinesToRequestPrefetchPixelData;
   *VRatioPrefetchY = dml_max(*VRatioPrefetchY, 1.0);
   if ((SwathHeightY > 4) && (VInitPreFillY > 3)) {
    if (LinesToRequestPrefetchPixelData > (VInitPreFillY - 3.0) / 2.0) {
     *VRatioPrefetchY =
       dml_max(
         (double) PrefetchSourceLinesY
           / LinesToRequestPrefetchPixelData,
         (double) MaxNumSwathY
           * SwathHeightY
           / (LinesToRequestPrefetchPixelData
             - (VInitPreFillY
               - 3.0)
               / 2.0));
     *VRatioPrefetchY = dml_max(*VRatioPrefetchY, 1.0);
    } else {
     MyError = 1;
     *VRatioPrefetchY = 0;
    }
   }

   *VRatioPrefetchC = (double) PrefetchSourceLinesC
     / LinesToRequestPrefetchPixelData;
   *VRatioPrefetchC = dml_max(*VRatioPrefetchC, 1.0);

   if ((SwathHeightC > 4)) {
    if (LinesToRequestPrefetchPixelData > (VInitPreFillC - 3.0) / 2.0) {
     *VRatioPrefetchC =
       dml_max(
         *VRatioPrefetchC,
         (double) MaxNumSwathC
           * SwathHeightC
           / (LinesToRequestPrefetchPixelData
             - (VInitPreFillC
               - 3.0)
               / 2.0));
     *VRatioPrefetchC = dml_max(*VRatioPrefetchC, 1.0);
    } else {
     MyError = 1;
     *VRatioPrefetchC = 0;
    }
   }

   *RequiredPrefetchPixDataBW =
     DPPPerPlane
       * ((double) PrefetchSourceLinesY
         / LinesToRequestPrefetchPixelData
         * dml_ceil(
           BytePerPixelDETY,
           1)
         + (double) PrefetchSourceLinesC
           / LinesToRequestPrefetchPixelData
           * dml_ceil(
             BytePerPixelDETC,
             2)
           / 2)
       * SwathWidthY / LineTime;
  } else {
   MyError = 1;
   *VRatioPrefetchY = 0;
   *VRatioPrefetchC = 0;
   *RequiredPrefetchPixDataBW = 0;
  }

 } else {
  MyError = 1;
 }

 if (MyError) {
  *PrefetchBandwidth = 0;
  TimeForFetchingMetaPTE = 0;
  TimeForFetchingRowInVBlank = 0;
  *DestinationLinesToRequestVMInVBlank = 0;
  *DestinationLinesToRequestRowInVBlank = 0;
  *DestinationLinesForPrefetch = 0;
  LinesToRequestPrefetchPixelData = 0;
  *VRatioPrefetchY = 0;
  *VRatioPrefetchC = 0;
  *RequiredPrefetchPixDataBW = 0;
 }

 return MyError;
}
