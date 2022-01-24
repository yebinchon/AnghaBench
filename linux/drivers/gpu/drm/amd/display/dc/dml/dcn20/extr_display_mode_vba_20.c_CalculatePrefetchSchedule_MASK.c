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
struct display_mode_lib {int dummy; } ;
typedef  enum output_format_class { ____Placeholder_output_format_class } output_format_class ;

/* Variables and functions */
 int dm_420 ; 
 double FUNC0 (double,int) ; 
 double FUNC1 (double,int) ; 
 double FUNC2 (double,double) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 

__attribute__((used)) static bool FUNC4(
		struct display_mode_lib *mode_lib,
		double DPPCLK,
		double DISPCLK,
		double PixelClock,
		double DCFCLKDeepSleep,
		unsigned int DSCDelay,
		unsigned int DPPPerPlane,
		bool ScalerEnabled,
		unsigned int NumberOfCursors,
		double DPPCLKDelaySubtotal,
		double DPPCLKDelaySCL,
		double DPPCLKDelaySCLLBOnly,
		double DPPCLKDelayCNVCFormater,
		double DPPCLKDelayCNVCCursor,
		double DISPCLKDelaySubtotal,
		unsigned int ScalerRecoutWidth,
		enum output_format_class OutputFormat,
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
		double *DSTXAfterScaler,
		double *DSTYAfterScaler,
		double *DestinationLinesForPrefetch,
		double *PrefetchBandwidth,
		double *DestinationLinesToRequestVMInVBlank,
		double *DestinationLinesToRequestRowInVBlank,
		double *VRatioPrefetchY,
		double *VRatioPrefetchC,
		double *RequiredPrefetchPixDataBW,
		unsigned int *VStartupRequiredWhenNotEnoughTimeForDynamicMetadata,
		double *Tno_bw,
		unsigned int *VUpdateOffsetPix,
		double *VUpdateWidthPix,
		double *VReadyOffsetPix)
{
	bool MyError = false;
	unsigned int DPPCycles, DISPCLKCycles;
	double DSTTotalPixelsAfterScaler, TotalRepeaterDelayTime;
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

	if (ScalerEnabled)
		DPPCycles = DPPCLKDelaySubtotal + DPPCLKDelaySCL;
	else
		DPPCycles = DPPCLKDelaySubtotal + DPPCLKDelaySCLLBOnly;

	DPPCycles = DPPCycles + DPPCLKDelayCNVCFormater + NumberOfCursors * DPPCLKDelayCNVCCursor;

	DISPCLKCycles = DISPCLKDelaySubtotal;

	if (DPPCLK == 0.0 || DISPCLK == 0.0)
		return true;

	*DSTXAfterScaler = DPPCycles * PixelClock / DPPCLK + DISPCLKCycles * PixelClock / DISPCLK
			+ DSCDelay;

	if (DPPPerPlane > 1)
		*DSTXAfterScaler = *DSTXAfterScaler + ScalerRecoutWidth;

	if (OutputFormat == dm_420 || (InterlaceEnable && ProgressiveToInterlaceUnitInOPP))
		*DSTYAfterScaler = 1;
	else
		*DSTYAfterScaler = 0;

	DSTTotalPixelsAfterScaler = ((double) (*DSTYAfterScaler * HTotal)) + *DSTXAfterScaler;
	*DSTYAfterScaler = FUNC1(DSTTotalPixelsAfterScaler / HTotal, 1);
	*DSTXAfterScaler = DSTTotalPixelsAfterScaler - ((double) (*DSTYAfterScaler * HTotal));

	*VUpdateOffsetPix = FUNC0(HTotal / 4.0, 1);
	TotalRepeaterDelayTime = MaxInterDCNTileRepeaters * (2.0 / DPPCLK + 3.0 / DISPCLK);
	*VUpdateWidthPix = (14.0 / DCFCLKDeepSleep + 12.0 / DPPCLK + TotalRepeaterDelayTime)
			* PixelClock;

	*VReadyOffsetPix = FUNC2(
			150.0 / DPPCLK,
			TotalRepeaterDelayTime + 20.0 / DCFCLKDeepSleep + 10.0 / DPPCLK)
			* PixelClock;

	Tsetup = (double) (*VUpdateOffsetPix + *VUpdateWidthPix + *VReadyOffsetPix) / PixelClock;

	LineTime = (double) HTotal / PixelClock;

	if (DynamicMetadataEnable) {
		double Tdmbf, Tdmec, Tdmsks;

		Tdm = FUNC2(0.0, UrgentExtraLatency - TCalc);
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
			MyError = true;
			*VStartupRequiredWhenNotEnoughTimeForDynamicMetadata = (Tsetup + TWait
					+ UrgentExtraLatency + Tdmbf + Tdmec + Tdmsks) / LineTime;
		} else
			*VStartupRequiredWhenNotEnoughTimeForDynamicMetadata = 0.0;
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

	dst_y_prefetch_equ = VStartup - FUNC2(TCalc + TWait, XFCRemoteSurfaceFlipDelay) / LineTime
			- (Tsetup + Tdm) / LineTime
			- (*DSTYAfterScaler + *DSTXAfterScaler / HTotal);

	Tsw_oto = FUNC2(PrefetchSourceLinesY, PrefetchSourceLinesC) * LineTime;

	prefetch_bw_oto = (MetaRowByte + PixelPTEBytesPerRow
			+ PrefetchSourceLinesY * SwathWidthY * FUNC0(BytePerPixelDETY, 1)
			+ PrefetchSourceLinesC * SwathWidthY / 2 * FUNC0(BytePerPixelDETC, 2))
			/ Tsw_oto;

	if (GPUVMEnable == true) {
		Tvm_oto =
				FUNC2(
						*Tno_bw + PDEAndMetaPTEBytesFrame / prefetch_bw_oto,
						FUNC2(
								UrgentExtraLatency
										+ UrgentLatencyPixelDataOnly
												* (PageTableLevels
														- 1),
								LineTime / 4.0));
	} else
		Tvm_oto = LineTime / 4.0;

	if ((GPUVMEnable == true || DCCEnable == true)) {
		Tr0_oto = FUNC2(
				(MetaRowByte + PixelPTEBytesPerRow) / prefetch_bw_oto,
				FUNC2(UrgentLatencyPixelDataOnly, FUNC2(LineTime - Tvm_oto, LineTime / 4)));
	} else
		Tr0_oto = LineTime - Tvm_oto;

	Tpre_oto = Tvm_oto + Tr0_oto + Tsw_oto;

	dst_y_prefetch_oto = Tpre_oto / LineTime;

	if (dst_y_prefetch_oto < dst_y_prefetch_equ)
		*DestinationLinesForPrefetch = dst_y_prefetch_oto;
	else
		*DestinationLinesForPrefetch = dst_y_prefetch_equ;

	*DestinationLinesForPrefetch = FUNC1(4.0 * (*DestinationLinesForPrefetch + 0.125), 1)
			/ 4;

	FUNC3("DML: VStartup: %d\n", VStartup);
	FUNC3("DML: TCalc: %f\n", TCalc);
	FUNC3("DML: TWait: %f\n", TWait);
	FUNC3("DML: XFCRemoteSurfaceFlipDelay: %f\n", XFCRemoteSurfaceFlipDelay);
	FUNC3("DML: LineTime: %f\n", LineTime);
	FUNC3("DML: Tsetup: %f\n", Tsetup);
	FUNC3("DML: Tdm: %f\n", Tdm);
	FUNC3("DML: DSTYAfterScaler: %f\n", *DSTYAfterScaler);
	FUNC3("DML: DSTXAfterScaler: %f\n", *DSTXAfterScaler);
	FUNC3("DML: HTotal: %d\n", HTotal);

	*PrefetchBandwidth = 0;
	*DestinationLinesToRequestVMInVBlank = 0;
	*DestinationLinesToRequestRowInVBlank = 0;
	*VRatioPrefetchY = 0;
	*VRatioPrefetchC = 0;
	*RequiredPrefetchPixDataBW = 0;
	if (*DestinationLinesForPrefetch > 1) {
		*PrefetchBandwidth = (PDEAndMetaPTEBytesFrame + 2 * MetaRowByte
				+ 2 * PixelPTEBytesPerRow
				+ PrefetchSourceLinesY * SwathWidthY * FUNC0(BytePerPixelDETY, 1)
				+ PrefetchSourceLinesC * SwathWidthY / 2
						* FUNC0(BytePerPixelDETC, 2))
				/ (*DestinationLinesForPrefetch * LineTime - *Tno_bw);
		if (GPUVMEnable) {
			TimeForFetchingMetaPTE =
					FUNC2(
							*Tno_bw
									+ (double) PDEAndMetaPTEBytesFrame
											/ *PrefetchBandwidth,
							FUNC2(
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

		if ((GPUVMEnable == true || DCCEnable == true)) {
			TimeForFetchingRowInVBlank =
					FUNC2(
							(MetaRowByte + PixelPTEBytesPerRow)
									/ *PrefetchBandwidth,
							FUNC2(
									UrgentLatencyPixelDataOnly,
									FUNC2(
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

		*DestinationLinesToRequestVMInVBlank = FUNC1(
				4.0 * (TimeForFetchingMetaPTE / LineTime + 0.125),
				1) / 4.0;

		*DestinationLinesToRequestRowInVBlank = FUNC1(
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
			*VRatioPrefetchY = FUNC2(*VRatioPrefetchY, 1.0);
			if ((SwathHeightY > 4) && (VInitPreFillY > 3)) {
				if (LinesToRequestPrefetchPixelData > (VInitPreFillY - 3.0) / 2.0) {
					*VRatioPrefetchY =
							FUNC2(
									(double) PrefetchSourceLinesY
											/ LinesToRequestPrefetchPixelData,
									(double) MaxNumSwathY
											* SwathHeightY
											/ (LinesToRequestPrefetchPixelData
													- (VInitPreFillY
															- 3.0)
															/ 2.0));
					*VRatioPrefetchY = FUNC2(*VRatioPrefetchY, 1.0);
				} else {
					MyError = true;
					*VRatioPrefetchY = 0;
				}
			}

			*VRatioPrefetchC = (double) PrefetchSourceLinesC
					/ LinesToRequestPrefetchPixelData;
			*VRatioPrefetchC = FUNC2(*VRatioPrefetchC, 1.0);

			if ((SwathHeightC > 4)) {
				if (LinesToRequestPrefetchPixelData > (VInitPreFillC - 3.0) / 2.0) {
					*VRatioPrefetchC =
							FUNC2(
									*VRatioPrefetchC,
									(double) MaxNumSwathC
											* SwathHeightC
											/ (LinesToRequestPrefetchPixelData
													- (VInitPreFillC
															- 3.0)
															/ 2.0));
					*VRatioPrefetchC = FUNC2(*VRatioPrefetchC, 1.0);
				} else {
					MyError = true;
					*VRatioPrefetchC = 0;
				}
			}

			*RequiredPrefetchPixDataBW =
					DPPPerPlane
							* ((double) PrefetchSourceLinesY
									/ LinesToRequestPrefetchPixelData
									* FUNC0(
											BytePerPixelDETY,
											1)
									+ (double) PrefetchSourceLinesC
											/ LinesToRequestPrefetchPixelData
											* FUNC0(
													BytePerPixelDETC,
													2)
											/ 2)
							* SwathWidthY / LineTime;
		} else {
			MyError = true;
			*VRatioPrefetchY = 0;
			*VRatioPrefetchC = 0;
			*RequiredPrefetchPixDataBW = 0;
		}

	} else {
		MyError = true;
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