; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_program_deadline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_program_deadline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { i32 }
%struct._vcs_dpi_display_dlg_regs_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._vcs_dpi_display_ttu_regs_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dcn10_hubp = type { i32 }

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
@REF_FREQ_TO_PIX_FREQ = common dso_local global i32 0, align 4
@VBLANK_PARAMETERS_1 = common dso_local global i32 0, align 4
@REFCYC_PER_PTE_GROUP_VBLANK_L = common dso_local global i32 0, align 4
@NOM_PARAMETERS_0 = common dso_local global i32 0, align 4
@DST_Y_PER_PTE_ROW_NOM_L = common dso_local global i32 0, align 4
@NOM_PARAMETERS_1 = common dso_local global i32 0, align 4
@REFCYC_PER_PTE_GROUP_NOM_L = common dso_local global i32 0, align 4
@NOM_PARAMETERS_4 = common dso_local global i32 0, align 4
@DST_Y_PER_META_ROW_NOM_L = common dso_local global i32 0, align 4
@NOM_PARAMETERS_5 = common dso_local global i32 0, align 4
@REFCYC_PER_META_CHUNK_NOM_L = common dso_local global i32 0, align 4
@PER_LINE_DELIVERY = common dso_local global i32 0, align 4
@REFCYC_PER_LINE_DELIVERY_L = common dso_local global i32 0, align 4
@REFCYC_PER_LINE_DELIVERY_C = common dso_local global i32 0, align 4
@VBLANK_PARAMETERS_2 = common dso_local global i32 0, align 4
@REFCYC_PER_PTE_GROUP_VBLANK_C = common dso_local global i32 0, align 4
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
@DCN_SURF0_TTU_CNTL0 = common dso_local global i32 0, align 4
@REFCYC_PER_REQ_DELIVERY = common dso_local global i32 0, align 4
@QoS_LEVEL_FIXED = common dso_local global i32 0, align 4
@QoS_RAMP_DISABLE = common dso_local global i32 0, align 4
@DCN_SURF1_TTU_CNTL0 = common dso_local global i32 0, align 4
@DCN_CUR0_TTU_CNTL0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubp1_program_deadline(%struct.hubp* %0, %struct._vcs_dpi_display_dlg_regs_st* %1, %struct._vcs_dpi_display_ttu_regs_st* %2) #0 {
  %4 = alloca %struct.hubp*, align 8
  %5 = alloca %struct._vcs_dpi_display_dlg_regs_st*, align 8
  %6 = alloca %struct._vcs_dpi_display_ttu_regs_st*, align 8
  %7 = alloca %struct.dcn10_hubp*, align 8
  store %struct.hubp* %0, %struct.hubp** %4, align 8
  store %struct._vcs_dpi_display_dlg_regs_st* %1, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  store %struct._vcs_dpi_display_ttu_regs_st* %2, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %8 = load %struct.hubp*, %struct.hubp** %4, align 8
  %9 = call %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp* %8)
  store %struct.dcn10_hubp* %9, %struct.dcn10_hubp** %7, align 8
  %10 = load i32, i32* @BLANK_OFFSET_0, align 4
  %11 = load i32, i32* @REFCYC_H_BLANK_END, align 4
  %12 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %13 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %12, i32 0, i32 18
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DLG_V_BLANK_END, align 4
  %16 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %17 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %16, i32 0, i32 17
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @REG_SET_2(i32 %10, i32 0, i32 %11, i32 %14, i32 %15, i32 %18)
  %20 = load i32, i32* @BLANK_OFFSET_1, align 4
  %21 = load i32, i32* @MIN_DST_Y_NEXT_START, align 4
  %22 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %23 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %22, i32 0, i32 16
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @REG_SET(i32 %20, i32 0, i32 %21, i32 %24)
  %26 = load i32, i32* @DST_DIMENSIONS, align 4
  %27 = load i32, i32* @REFCYC_PER_HTOTAL, align 4
  %28 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %29 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %28, i32 0, i32 15
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @REG_SET(i32 %26, i32 0, i32 %27, i32 %30)
  %32 = load i32, i32* @DST_AFTER_SCALER, align 4
  %33 = load i32, i32* @REFCYC_X_AFTER_SCALER, align 4
  %34 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %35 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %34, i32 0, i32 14
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DST_Y_AFTER_SCALER, align 4
  %38 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %39 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %38, i32 0, i32 13
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @REG_SET_2(i32 %32, i32 0, i32 %33, i32 %36, i32 %37, i32 %40)
  %42 = load i32, i32* @REF_FREQ_TO_PIX_FREQ, align 4
  %43 = load i32, i32* @REF_FREQ_TO_PIX_FREQ, align 4
  %44 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %45 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %44, i32 0, i32 12
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @REG_SET(i32 %42, i32 0, i32 %43, i32 %46)
  %48 = load i32, i32* @VBLANK_PARAMETERS_1, align 4
  %49 = load i32, i32* @REFCYC_PER_PTE_GROUP_VBLANK_L, align 4
  %50 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %51 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %50, i32 0, i32 11
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @REG_SET(i32 %48, i32 0, i32 %49, i32 %52)
  %54 = load i32, i32* @NOM_PARAMETERS_0, align 4
  %55 = call i64 @REG(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %3
  %58 = load i32, i32* @NOM_PARAMETERS_0, align 4
  %59 = load i32, i32* @DST_Y_PER_PTE_ROW_NOM_L, align 4
  %60 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %61 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @REG_SET(i32 %58, i32 0, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %57, %3
  %65 = load i32, i32* @NOM_PARAMETERS_1, align 4
  %66 = call i64 @REG(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i32, i32* @NOM_PARAMETERS_1, align 4
  %70 = load i32, i32* @REFCYC_PER_PTE_GROUP_NOM_L, align 4
  %71 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %72 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @REG_SET(i32 %69, i32 0, i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %68, %64
  %76 = load i32, i32* @NOM_PARAMETERS_4, align 4
  %77 = load i32, i32* @DST_Y_PER_META_ROW_NOM_L, align 4
  %78 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %79 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @REG_SET(i32 %76, i32 0, i32 %77, i32 %80)
  %82 = load i32, i32* @NOM_PARAMETERS_5, align 4
  %83 = load i32, i32* @REFCYC_PER_META_CHUNK_NOM_L, align 4
  %84 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %85 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @REG_SET(i32 %82, i32 0, i32 %83, i32 %86)
  %88 = load i32, i32* @PER_LINE_DELIVERY, align 4
  %89 = load i32, i32* @REFCYC_PER_LINE_DELIVERY_L, align 4
  %90 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %91 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @REFCYC_PER_LINE_DELIVERY_C, align 4
  %94 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %95 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @REG_SET_2(i32 %88, i32 0, i32 %89, i32 %92, i32 %93, i32 %96)
  %98 = load i32, i32* @VBLANK_PARAMETERS_2, align 4
  %99 = load i32, i32* @REFCYC_PER_PTE_GROUP_VBLANK_C, align 4
  %100 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %101 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @REG_SET(i32 %98, i32 0, i32 %99, i32 %102)
  %104 = load i32, i32* @NOM_PARAMETERS_2, align 4
  %105 = call i64 @REG(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %75
  %108 = load i32, i32* @NOM_PARAMETERS_2, align 4
  %109 = load i32, i32* @DST_Y_PER_PTE_ROW_NOM_C, align 4
  %110 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %111 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @REG_SET(i32 %108, i32 0, i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %107, %75
  %115 = load i32, i32* @NOM_PARAMETERS_3, align 4
  %116 = call i64 @REG(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %114
  %119 = load i32, i32* @NOM_PARAMETERS_3, align 4
  %120 = load i32, i32* @REFCYC_PER_PTE_GROUP_NOM_C, align 4
  %121 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %122 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @REG_SET(i32 %119, i32 0, i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %118, %114
  %126 = load i32, i32* @NOM_PARAMETERS_6, align 4
  %127 = load i32, i32* @DST_Y_PER_META_ROW_NOM_C, align 4
  %128 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %129 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @REG_SET(i32 %126, i32 0, i32 %127, i32 %130)
  %132 = load i32, i32* @NOM_PARAMETERS_7, align 4
  %133 = load i32, i32* @REFCYC_PER_META_CHUNK_NOM_C, align 4
  %134 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %5, align 8
  %135 = getelementptr inbounds %struct._vcs_dpi_display_dlg_regs_st, %struct._vcs_dpi_display_dlg_regs_st* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @REG_SET(i32 %132, i32 0, i32 %133, i32 %136)
  %138 = load i32, i32* @DCN_TTU_QOS_WM, align 4
  %139 = load i32, i32* @QoS_LEVEL_LOW_WM, align 4
  %140 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %141 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %140, i32 0, i32 10
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @QoS_LEVEL_HIGH_WM, align 4
  %144 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %145 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @REG_SET_2(i32 %138, i32 0, i32 %139, i32 %142, i32 %143, i32 %146)
  %148 = load i32, i32* @DCN_SURF0_TTU_CNTL0, align 4
  %149 = load i32, i32* @REFCYC_PER_REQ_DELIVERY, align 4
  %150 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %151 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %150, i32 0, i32 8
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @QoS_LEVEL_FIXED, align 4
  %154 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %155 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @QoS_RAMP_DISABLE, align 4
  %158 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %159 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @REG_SET_3(i32 %148, i32 0, i32 %149, i32 %152, i32 %153, i32 %156, i32 %157, i32 %160)
  %162 = load i32, i32* @DCN_SURF1_TTU_CNTL0, align 4
  %163 = load i32, i32* @REFCYC_PER_REQ_DELIVERY, align 4
  %164 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %165 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @QoS_LEVEL_FIXED, align 4
  %168 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %169 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @QoS_RAMP_DISABLE, align 4
  %172 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %173 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @REG_SET_3(i32 %162, i32 0, i32 %163, i32 %166, i32 %167, i32 %170, i32 %171, i32 %174)
  %176 = load i32, i32* @DCN_CUR0_TTU_CNTL0, align 4
  %177 = load i32, i32* @REFCYC_PER_REQ_DELIVERY, align 4
  %178 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %179 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @QoS_LEVEL_FIXED, align 4
  %182 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %183 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @QoS_RAMP_DISABLE, align 4
  %186 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %6, align 8
  %187 = getelementptr inbounds %struct._vcs_dpi_display_ttu_regs_st, %struct._vcs_dpi_display_ttu_regs_st* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @REG_SET_3(i32 %176, i32 0, i32 %177, i32 %180, i32 %181, i32 %184, i32 %185, i32 %188)
  ret void
}

declare dso_local %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp*) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i64 @REG(i32) #1

declare dso_local i32 @REG_SET_3(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
