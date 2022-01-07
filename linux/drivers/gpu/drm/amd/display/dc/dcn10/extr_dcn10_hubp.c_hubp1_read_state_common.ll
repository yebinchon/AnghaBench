; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_read_state_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_read_state_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { i32 }
%struct.dcn10_hubp = type { %struct.dcn_hubp_state }
%struct.dcn_hubp_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_dlg_regs_st }
%struct._vcs_dpi_display_rq_regs_st = type { i32, i32, i32, i32, i32 }
%struct._vcs_dpi_display_ttu_regs_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._vcs_dpi_display_dlg_regs_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@HUBPRET_CONTROL = common dso_local global i32 0, align 4
@DET_BUF_PLANE1_BASE_ADDRESS = common dso_local global i32 0, align 4
@DCN_EXPANSION_MODE = common dso_local global i32 0, align 4
@DRQ_EXPANSION_MODE = common dso_local global i32 0, align 4
@PRQ_EXPANSION_MODE = common dso_local global i32 0, align 4
@MRQ_EXPANSION_MODE = common dso_local global i32 0, align 4
@CRQ_EXPANSION_MODE = common dso_local global i32 0, align 4
@BLANK_OFFSET_0 = common dso_local global i32 0, align 4
@REFCYC_H_BLANK_END = common dso_local global i32 0, align 4
@DLG_V_BLANK_END = common dso_local global i32 0, align 4
@BLANK_OFFSET_1 = common dso_local global i32 0, align 4
@MIN_DST_Y_NEXT_START = common dso_local global i32 0, align 4
@DST_DIMENSIONS = common dso_local global i32 0, align 4
@REFCYC_PER_HTOTAL = common dso_local global i32 0, align 4
@DST_AFTER_SCALER = common dso_local global i32 0, align 4
@REFCYC_X_AFTER_SCALER = common dso_local global i32 0, align 4
@DST_Y_AFTER_SCALER = common dso_local global i32 0, align 4
@PREFETCH_SETTINS = common dso_local global i32 0, align 4
@DST_Y_PREFETCH = common dso_local global i32 0, align 4
@VRATIO_PREFETCH = common dso_local global i32 0, align 4
@PREFETCH_SETTINGS = common dso_local global i32 0, align 4
@VBLANK_PARAMETERS_0 = common dso_local global i32 0, align 4
@DST_Y_PER_VM_VBLANK = common dso_local global i32 0, align 4
@DST_Y_PER_ROW_VBLANK = common dso_local global i32 0, align 4
@REF_FREQ_TO_PIX_FREQ = common dso_local global i32 0, align 4
@VBLANK_PARAMETERS_1 = common dso_local global i32 0, align 4
@REFCYC_PER_PTE_GROUP_VBLANK_L = common dso_local global i32 0, align 4
@VBLANK_PARAMETERS_3 = common dso_local global i32 0, align 4
@REFCYC_PER_META_CHUNK_VBLANK_L = common dso_local global i32 0, align 4
@NOM_PARAMETERS_0 = common dso_local global i32 0, align 4
@DST_Y_PER_PTE_ROW_NOM_L = common dso_local global i32 0, align 4
@NOM_PARAMETERS_1 = common dso_local global i32 0, align 4
@REFCYC_PER_PTE_GROUP_NOM_L = common dso_local global i32 0, align 4
@NOM_PARAMETERS_4 = common dso_local global i32 0, align 4
@DST_Y_PER_META_ROW_NOM_L = common dso_local global i32 0, align 4
@NOM_PARAMETERS_5 = common dso_local global i32 0, align 4
@REFCYC_PER_META_CHUNK_NOM_L = common dso_local global i32 0, align 4
@PER_LINE_DELIVERY_PRE = common dso_local global i32 0, align 4
@REFCYC_PER_LINE_DELIVERY_PRE_L = common dso_local global i32 0, align 4
@REFCYC_PER_LINE_DELIVERY_PRE_C = common dso_local global i32 0, align 4
@PER_LINE_DELIVERY = common dso_local global i32 0, align 4
@REFCYC_PER_LINE_DELIVERY_L = common dso_local global i32 0, align 4
@REFCYC_PER_LINE_DELIVERY_C = common dso_local global i32 0, align 4
@PREFETCH_SETTINS_C = common dso_local global i32 0, align 4
@VRATIO_PREFETCH_C = common dso_local global i32 0, align 4
@PREFETCH_SETTINGS_C = common dso_local global i32 0, align 4
@VBLANK_PARAMETERS_2 = common dso_local global i32 0, align 4
@REFCYC_PER_PTE_GROUP_VBLANK_C = common dso_local global i32 0, align 4
@VBLANK_PARAMETERS_4 = common dso_local global i32 0, align 4
@REFCYC_PER_META_CHUNK_VBLANK_C = common dso_local global i32 0, align 4
@NOM_PARAMETERS_2 = common dso_local global i32 0, align 4
@DST_Y_PER_PTE_ROW_NOM_C = common dso_local global i32 0, align 4
@NOM_PARAMETERS_3 = common dso_local global i32 0, align 4
@REFCYC_PER_PTE_GROUP_NOM_C = common dso_local global i32 0, align 4
@NOM_PARAMETERS_6 = common dso_local global i32 0, align 4
@DST_Y_PER_META_ROW_NOM_C = common dso_local global i32 0, align 4
@NOM_PARAMETERS_7 = common dso_local global i32 0, align 4
@REFCYC_PER_META_CHUNK_NOM_C = common dso_local global i32 0, align 4
@DCN_TTU_QOS_WM = common dso_local global i32 0, align 4
@QoS_LEVEL_LOW_WM = common dso_local global i32 0, align 4
@QoS_LEVEL_HIGH_WM = common dso_local global i32 0, align 4
@DCN_GLOBAL_TTU_CNTL = common dso_local global i32 0, align 4
@MIN_TTU_VBLANK = common dso_local global i32 0, align 4
@QoS_LEVEL_FLIP = common dso_local global i32 0, align 4
@DCN_SURF0_TTU_CNTL0 = common dso_local global i32 0, align 4
@REFCYC_PER_REQ_DELIVERY = common dso_local global i32 0, align 4
@QoS_LEVEL_FIXED = common dso_local global i32 0, align 4
@QoS_RAMP_DISABLE = common dso_local global i32 0, align 4
@DCN_SURF0_TTU_CNTL1 = common dso_local global i32 0, align 4
@REFCYC_PER_REQ_DELIVERY_PRE = common dso_local global i32 0, align 4
@DCN_SURF1_TTU_CNTL0 = common dso_local global i32 0, align 4
@DCN_SURF1_TTU_CNTL1 = common dso_local global i32 0, align 4
@DCSURF_SURFACE_CONFIG = common dso_local global i32 0, align 4
@SURFACE_PIXEL_FORMAT = common dso_local global i32 0, align 4
@DCSURF_SURFACE_EARLIEST_INUSE_HIGH = common dso_local global i32 0, align 4
@SURFACE_EARLIEST_INUSE_ADDRESS_HIGH = common dso_local global i32 0, align 4
@DCSURF_SURFACE_EARLIEST_INUSE = common dso_local global i32 0, align 4
@SURFACE_EARLIEST_INUSE_ADDRESS = common dso_local global i32 0, align 4
@DCSURF_PRI_VIEWPORT_DIMENSION = common dso_local global i32 0, align 4
@PRI_VIEWPORT_WIDTH = common dso_local global i32 0, align 4
@PRI_VIEWPORT_HEIGHT = common dso_local global i32 0, align 4
@ROTATION_ANGLE = common dso_local global i32 0, align 4
@H_MIRROR_EN = common dso_local global i32 0, align 4
@DCSURF_TILING_CONFIG = common dso_local global i32 0, align 4
@SW_MODE = common dso_local global i32 0, align 4
@DCSURF_SURFACE_CONTROL = common dso_local global i32 0, align 4
@PRIMARY_SURFACE_DCC_EN = common dso_local global i32 0, align 4
@DCHUBP_CNTL = common dso_local global i32 0, align 4
@HUBP_BLANK_EN = common dso_local global i32 0, align 4
@HUBP_TTU_DISABLE = common dso_local global i32 0, align 4
@HUBP_UNDERFLOW_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubp1_read_state_common(%struct.hubp* %0) #0 {
  %2 = alloca %struct.hubp*, align 8
  %3 = alloca %struct.dcn10_hubp*, align 8
  %4 = alloca %struct.dcn_hubp_state*, align 8
  %5 = alloca %struct._vcs_dpi_display_dlg_regs_st*, align 8
  %6 = alloca %struct._vcs_dpi_display_ttu_regs_st*, align 8
  %7 = alloca %struct._vcs_dpi_display_rq_regs_st*, align 8
  store %struct.hubp* %0, %struct.hubp** %2, align 8
  %8 = load %struct.hubp*, %struct.hubp** %2, align 8
  %9 = call %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp* %8)
  store %struct.dcn10_hubp* %9, %struct.dcn10_hubp** %3, align 8
  %10 = load %struct.dcn10_hubp*, %struct.dcn10_hubp** %3, align 8
  %11 = getelementptr inbounds %struct.dcn10_hubp, %struct.dcn10_hubp* %10, i32 0, i32 0
  store %struct.dcn_hubp_state* %11, %struct.dcn_hubp_state** %4, align 8
  %12 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %4, align 8
  %13 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %12, i32 0, i32 17
  store %struct._vcs_dpi_display_dlg_regs_st* %13, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %14 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %4, align 8
  %15 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %14, i32 0, i32 16
  store %struct._vcs_dpi_display_ttu_regs_st* %15, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %16 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %4, align 8
  %17 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %16, i32 0, i32 15
  store %struct._vcs_dpi_display_rq_regs_st* %17, %struct._vcs_dpi_display_rq_regs_st** %7, align 8
  %18 = load i32, i32* @HUBPRET_CONTROL, align 4
  %19 = load i32, i32* @DET_BUF_PLANE1_BASE_ADDRESS, align 4
  %20 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %7, align 8
  %21 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %20, i32 0, i32 4
  %22 = call i32 @REG_GET(i32 %18, i32 %19, i32* %21)
  %23 = load i32, i32* @DCN_EXPANSION_MODE, align 4
  %24 = load i32, i32* @DRQ_EXPANSION_MODE, align 4
  %25 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %7, align 8
  %26 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %25, i32 0, i32 3
  %27 = load i32, i32* @PRQ_EXPANSION_MODE, align 4
  %28 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %7, align 8
  %29 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %28, i32 0, i32 2
  %30 = load i32, i32* @MRQ_EXPANSION_MODE, align 4
  %31 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %7, align 8
  %32 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %31, i32 0, i32 1
  %33 = load i32, i32* @CRQ_EXPANSION_MODE, align 4
  %34 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %7, align 8
  %35 = getelementptr inbounds %struct._vcs_dpi_display_rq_regs_st, %struct._vcs_dpi_display_rq_regs_st* %34, i32 0, i32 0
  %36 = call i32 @REG_GET_4(i32 %23, i32 %24, i32* %26, i32 %27, i32* %29, i32 %30, i32* %32, i32 %33, i32* %35)
  %37 = load i32, i32* @BLANK_OFFSET_0, align 4
  %38 = load i32, i32* @REFCYC_H_BLANK_END, align 4
  %39 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %40 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %39, i32 0, i32 27
  %41 = load i32, i32* @DLG_V_BLANK_END, align 4
  %42 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %43 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %42, i32 0, i32 26
  %44 = call i32 @REG_GET_2(i32 %37, i32 %38, i32* %40, i32 %41, i32* %43)
  %45 = load i32, i32* @BLANK_OFFSET_1, align 4
  %46 = load i32, i32* @MIN_DST_Y_NEXT_START, align 4
  %47 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %48 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %47, i32 0, i32 25
  %49 = call i32 @REG_GET(i32 %45, i32 %46, i32* %48)
  %50 = load i32, i32* @DST_DIMENSIONS, align 4
  %51 = load i32, i32* @REFCYC_PER_HTOTAL, align 4
  %52 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %53 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %52, i32 0, i32 24
  %54 = call i32 @REG_GET(i32 %50, i32 %51, i32* %53)
  %55 = load i32, i32* @DST_AFTER_SCALER, align 4
  %56 = load i32, i32* @REFCYC_X_AFTER_SCALER, align 4
  %57 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %58 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %57, i32 0, i32 23
  %59 = load i32, i32* @DST_Y_AFTER_SCALER, align 4
  %60 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %61 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %60, i32 0, i32 22
  %62 = call i32 @REG_GET_2(i32 %55, i32 %56, i32* %58, i32 %59, i32* %61)
  %63 = load i32, i32* @PREFETCH_SETTINS, align 4
  %64 = call i64 @REG(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %1
  %67 = load i32, i32* @PREFETCH_SETTINS, align 4
  %68 = load i32, i32* @DST_Y_PREFETCH, align 4
  %69 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %70 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %69, i32 0, i32 21
  %71 = load i32, i32* @VRATIO_PREFETCH, align 4
  %72 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %73 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %72, i32 0, i32 20
  %74 = call i32 @REG_GET_2(i32 %67, i32 %68, i32* %70, i32 %71, i32* %73)
  br label %84

75:                                               ; preds = %1
  %76 = load i32, i32* @PREFETCH_SETTINGS, align 4
  %77 = load i32, i32* @DST_Y_PREFETCH, align 4
  %78 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %79 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %78, i32 0, i32 21
  %80 = load i32, i32* @VRATIO_PREFETCH, align 4
  %81 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %82 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %81, i32 0, i32 20
  %83 = call i32 @REG_GET_2(i32 %76, i32 %77, i32* %79, i32 %80, i32* %82)
  br label %84

84:                                               ; preds = %75, %66
  %85 = load i32, i32* @VBLANK_PARAMETERS_0, align 4
  %86 = load i32, i32* @DST_Y_PER_VM_VBLANK, align 4
  %87 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %88 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %87, i32 0, i32 19
  %89 = load i32, i32* @DST_Y_PER_ROW_VBLANK, align 4
  %90 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %91 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %90, i32 0, i32 18
  %92 = call i32 @REG_GET_2(i32 %85, i32 %86, i32* %88, i32 %89, i32* %91)
  %93 = load i32, i32* @REF_FREQ_TO_PIX_FREQ, align 4
  %94 = load i32, i32* @REF_FREQ_TO_PIX_FREQ, align 4
  %95 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %96 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %95, i32 0, i32 17
  %97 = call i32 @REG_GET(i32 %93, i32 %94, i32* %96)
  %98 = load i32, i32* @VBLANK_PARAMETERS_1, align 4
  %99 = load i32, i32* @REFCYC_PER_PTE_GROUP_VBLANK_L, align 4
  %100 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %101 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %100, i32 0, i32 16
  %102 = call i32 @REG_GET(i32 %98, i32 %99, i32* %101)
  %103 = load i32, i32* @VBLANK_PARAMETERS_3, align 4
  %104 = load i32, i32* @REFCYC_PER_META_CHUNK_VBLANK_L, align 4
  %105 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %106 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %105, i32 0, i32 15
  %107 = call i32 @REG_GET(i32 %103, i32 %104, i32* %106)
  %108 = load i32, i32* @NOM_PARAMETERS_0, align 4
  %109 = call i64 @REG(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %84
  %112 = load i32, i32* @NOM_PARAMETERS_0, align 4
  %113 = load i32, i32* @DST_Y_PER_PTE_ROW_NOM_L, align 4
  %114 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %115 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %114, i32 0, i32 14
  %116 = call i32 @REG_GET(i32 %112, i32 %113, i32* %115)
  br label %117

117:                                              ; preds = %111, %84
  %118 = load i32, i32* @NOM_PARAMETERS_1, align 4
  %119 = call i64 @REG(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load i32, i32* @NOM_PARAMETERS_1, align 4
  %123 = load i32, i32* @REFCYC_PER_PTE_GROUP_NOM_L, align 4
  %124 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %125 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %124, i32 0, i32 13
  %126 = call i32 @REG_GET(i32 %122, i32 %123, i32* %125)
  br label %127

127:                                              ; preds = %121, %117
  %128 = load i32, i32* @NOM_PARAMETERS_4, align 4
  %129 = load i32, i32* @DST_Y_PER_META_ROW_NOM_L, align 4
  %130 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %131 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %130, i32 0, i32 12
  %132 = call i32 @REG_GET(i32 %128, i32 %129, i32* %131)
  %133 = load i32, i32* @NOM_PARAMETERS_5, align 4
  %134 = load i32, i32* @REFCYC_PER_META_CHUNK_NOM_L, align 4
  %135 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %136 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %135, i32 0, i32 11
  %137 = call i32 @REG_GET(i32 %133, i32 %134, i32* %136)
  %138 = load i32, i32* @PER_LINE_DELIVERY_PRE, align 4
  %139 = load i32, i32* @REFCYC_PER_LINE_DELIVERY_PRE_L, align 4
  %140 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %141 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %140, i32 0, i32 10
  %142 = load i32, i32* @REFCYC_PER_LINE_DELIVERY_PRE_C, align 4
  %143 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %144 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %143, i32 0, i32 9
  %145 = call i32 @REG_GET_2(i32 %138, i32 %139, i32* %141, i32 %142, i32* %144)
  %146 = load i32, i32* @PER_LINE_DELIVERY, align 4
  %147 = load i32, i32* @REFCYC_PER_LINE_DELIVERY_L, align 4
  %148 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %149 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %148, i32 0, i32 8
  %150 = load i32, i32* @REFCYC_PER_LINE_DELIVERY_C, align 4
  %151 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %152 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %151, i32 0, i32 7
  %153 = call i32 @REG_GET_2(i32 %146, i32 %147, i32* %149, i32 %150, i32* %152)
  %154 = load i32, i32* @PREFETCH_SETTINS_C, align 4
  %155 = call i64 @REG(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %127
  %158 = load i32, i32* @PREFETCH_SETTINS_C, align 4
  %159 = load i32, i32* @VRATIO_PREFETCH_C, align 4
  %160 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %161 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %160, i32 0, i32 6
  %162 = call i32 @REG_GET(i32 %158, i32 %159, i32* %161)
  br label %169

163:                                              ; preds = %127
  %164 = load i32, i32* @PREFETCH_SETTINGS_C, align 4
  %165 = load i32, i32* @VRATIO_PREFETCH_C, align 4
  %166 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %167 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %166, i32 0, i32 6
  %168 = call i32 @REG_GET(i32 %164, i32 %165, i32* %167)
  br label %169

169:                                              ; preds = %163, %157
  %170 = load i32, i32* @VBLANK_PARAMETERS_2, align 4
  %171 = load i32, i32* @REFCYC_PER_PTE_GROUP_VBLANK_C, align 4
  %172 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %173 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %172, i32 0, i32 5
  %174 = call i32 @REG_GET(i32 %170, i32 %171, i32* %173)
  %175 = load i32, i32* @VBLANK_PARAMETERS_4, align 4
  %176 = load i32, i32* @REFCYC_PER_META_CHUNK_VBLANK_C, align 4
  %177 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %178 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %177, i32 0, i32 4
  %179 = call i32 @REG_GET(i32 %175, i32 %176, i32* %178)
  %180 = load i32, i32* @NOM_PARAMETERS_2, align 4
  %181 = call i64 @REG(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %169
  %184 = load i32, i32* @NOM_PARAMETERS_2, align 4
  %185 = load i32, i32* @DST_Y_PER_PTE_ROW_NOM_C, align 4
  %186 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %187 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %186, i32 0, i32 3
  %188 = call i32 @REG_GET(i32 %184, i32 %185, i32* %187)
  br label %189

189:                                              ; preds = %183, %169
  %190 = load i32, i32* @NOM_PARAMETERS_3, align 4
  %191 = call i64 @REG(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %189
  %194 = load i32, i32* @NOM_PARAMETERS_3, align 4
  %195 = load i32, i32* @REFCYC_PER_PTE_GROUP_NOM_C, align 4
  %196 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %197 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %196, i32 0, i32 2
  %198 = call i32 @REG_GET(i32 %194, i32 %195, i32* %197)
  br label %199

199:                                              ; preds = %193, %189
  %200 = load i32, i32* @NOM_PARAMETERS_6, align 4
  %201 = load i32, i32* @DST_Y_PER_META_ROW_NOM_C, align 4
  %202 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %203 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %202, i32 0, i32 1
  %204 = call i32 @REG_GET(i32 %200, i32 %201, i32* %203)
  %205 = load i32, i32* @NOM_PARAMETERS_7, align 4
  %206 = load i32, i32* @REFCYC_PER_META_CHUNK_NOM_C, align 4
  %207 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %208 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %207, i32 0, i32 0
  %209 = call i32 @REG_GET(i32 %205, i32 %206, i32* %208)
  %210 = load i32, i32* @DCN_TTU_QOS_WM, align 4
  %211 = load i32, i32* @QoS_LEVEL_LOW_WM, align 4
  %212 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %213 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %212, i32 0, i32 11
  %214 = load i32, i32* @QoS_LEVEL_HIGH_WM, align 4
  %215 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %216 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %215, i32 0, i32 10
  %217 = call i32 @REG_GET_2(i32 %210, i32 %211, i32* %213, i32 %214, i32* %216)
  %218 = load i32, i32* @DCN_GLOBAL_TTU_CNTL, align 4
  %219 = load i32, i32* @MIN_TTU_VBLANK, align 4
  %220 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %221 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %220, i32 0, i32 9
  %222 = load i32, i32* @QoS_LEVEL_FLIP, align 4
  %223 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %224 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %223, i32 0, i32 8
  %225 = call i32 @REG_GET_2(i32 %218, i32 %219, i32* %221, i32 %222, i32* %224)
  %226 = load i32, i32* @DCN_SURF0_TTU_CNTL0, align 4
  %227 = load i32, i32* @REFCYC_PER_REQ_DELIVERY, align 4
  %228 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %229 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %228, i32 0, i32 7
  %230 = load i32, i32* @QoS_LEVEL_FIXED, align 4
  %231 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %232 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %231, i32 0, i32 6
  %233 = load i32, i32* @QoS_RAMP_DISABLE, align 4
  %234 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %235 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %234, i32 0, i32 5
  %236 = call i32 @REG_GET_3(i32 %226, i32 %227, i32* %229, i32 %230, i32* %232, i32 %233, i32* %235)
  %237 = load i32, i32* @DCN_SURF0_TTU_CNTL1, align 4
  %238 = load i32, i32* @REFCYC_PER_REQ_DELIVERY_PRE, align 4
  %239 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %240 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %239, i32 0, i32 4
  %241 = call i32 @REG_GET(i32 %237, i32 %238, i32* %240)
  %242 = load i32, i32* @DCN_SURF1_TTU_CNTL0, align 4
  %243 = load i32, i32* @REFCYC_PER_REQ_DELIVERY, align 4
  %244 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %245 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %244, i32 0, i32 3
  %246 = load i32, i32* @QoS_LEVEL_FIXED, align 4
  %247 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %248 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %247, i32 0, i32 2
  %249 = load i32, i32* @QoS_RAMP_DISABLE, align 4
  %250 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %251 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %250, i32 0, i32 1
  %252 = call i32 @REG_GET_3(i32 %242, i32 %243, i32* %245, i32 %246, i32* %248, i32 %249, i32* %251)
  %253 = load i32, i32* @DCN_SURF1_TTU_CNTL1, align 4
  %254 = load i32, i32* @REFCYC_PER_REQ_DELIVERY_PRE, align 4
  %255 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %256 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %255, i32 0, i32 0
  %257 = call i32 @REG_GET(i32 %253, i32 %254, i32* %256)
  %258 = load i32, i32* @DCSURF_SURFACE_CONFIG, align 4
  %259 = load i32, i32* @SURFACE_PIXEL_FORMAT, align 4
  %260 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %4, align 8
  %261 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %260, i32 0, i32 14
  %262 = call i32 @REG_GET(i32 %258, i32 %259, i32* %261)
  %263 = load i32, i32* @DCSURF_SURFACE_EARLIEST_INUSE_HIGH, align 4
  %264 = load i32, i32* @SURFACE_EARLIEST_INUSE_ADDRESS_HIGH, align 4
  %265 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %4, align 8
  %266 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %265, i32 0, i32 13
  %267 = call i32 @REG_GET(i32 %263, i32 %264, i32* %266)
  %268 = load i32, i32* @DCSURF_SURFACE_EARLIEST_INUSE, align 4
  %269 = load i32, i32* @SURFACE_EARLIEST_INUSE_ADDRESS, align 4
  %270 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %4, align 8
  %271 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %270, i32 0, i32 12
  %272 = call i32 @REG_GET(i32 %268, i32 %269, i32* %271)
  %273 = load i32, i32* @DCSURF_PRI_VIEWPORT_DIMENSION, align 4
  %274 = load i32, i32* @PRI_VIEWPORT_WIDTH, align 4
  %275 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %4, align 8
  %276 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %275, i32 0, i32 11
  %277 = load i32, i32* @PRI_VIEWPORT_HEIGHT, align 4
  %278 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %4, align 8
  %279 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %278, i32 0, i32 10
  %280 = call i32 @REG_GET_2(i32 %273, i32 %274, i32* %276, i32 %277, i32* %279)
  %281 = load i32, i32* @DCSURF_SURFACE_CONFIG, align 4
  %282 = load i32, i32* @ROTATION_ANGLE, align 4
  %283 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %4, align 8
  %284 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %283, i32 0, i32 9
  %285 = load i32, i32* @H_MIRROR_EN, align 4
  %286 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %4, align 8
  %287 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %286, i32 0, i32 8
  %288 = call i32 @REG_GET_2(i32 %281, i32 %282, i32* %284, i32 %285, i32* %287)
  %289 = load i32, i32* @DCSURF_TILING_CONFIG, align 4
  %290 = load i32, i32* @SW_MODE, align 4
  %291 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %4, align 8
  %292 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %291, i32 0, i32 7
  %293 = call i32 @REG_GET(i32 %289, i32 %290, i32* %292)
  %294 = load i32, i32* @DCSURF_SURFACE_CONTROL, align 4
  %295 = load i32, i32* @PRIMARY_SURFACE_DCC_EN, align 4
  %296 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %4, align 8
  %297 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %296, i32 0, i32 6
  %298 = call i32 @REG_GET(i32 %294, i32 %295, i32* %297)
  %299 = load i32, i32* @DCHUBP_CNTL, align 4
  %300 = load i32, i32* @HUBP_BLANK_EN, align 4
  %301 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %4, align 8
  %302 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %301, i32 0, i32 5
  %303 = load i32, i32* @HUBP_TTU_DISABLE, align 4
  %304 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %4, align 8
  %305 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %304, i32 0, i32 4
  %306 = load i32, i32* @HUBP_UNDERFLOW_STATUS, align 4
  %307 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %4, align 8
  %308 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %307, i32 0, i32 3
  %309 = call i32 @REG_GET_3(i32 %299, i32 %300, i32* %302, i32 %303, i32* %305, i32 %306, i32* %308)
  %310 = load i32, i32* @DCN_GLOBAL_TTU_CNTL, align 4
  %311 = load i32, i32* @MIN_TTU_VBLANK, align 4
  %312 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %4, align 8
  %313 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %312, i32 0, i32 2
  %314 = call i32 @REG_GET(i32 %310, i32 %311, i32* %313)
  %315 = load i32, i32* @DCN_TTU_QOS_WM, align 4
  %316 = load i32, i32* @QoS_LEVEL_LOW_WM, align 4
  %317 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %4, align 8
  %318 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %317, i32 0, i32 1
  %319 = load i32, i32* @QoS_LEVEL_HIGH_WM, align 4
  %320 = load %struct.dcn_hubp_state*, %struct.dcn_hubp_state** %4, align 8
  %321 = getelementptr inbounds %struct.dcn_hubp_state, %struct.dcn_hubp_state* %320, i32 0, i32 0
  %322 = call i32 @REG_GET_2(i32 %315, i32 %316, i32* %318, i32 %319, i32* %321)
  ret void
}

declare dso_local %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp*) #1

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

declare dso_local i32 @REG_GET_4(i32, i32, i32*, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @REG_GET_2(i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @REG(i32) #1

declare dso_local i32 @REG_GET_3(i32, i32, i32*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
