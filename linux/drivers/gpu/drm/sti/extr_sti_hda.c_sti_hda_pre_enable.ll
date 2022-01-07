; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hda.c_sti_hda_pre_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hda.c_sti_hda_pre_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.drm_bridge = type { %struct.sti_hda* }
%struct.sti_hda = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to prepare/enable hda_pix clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to prepare/enable hda_hddac clk\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Undefined mode\0A\00", align 1
@hda_supported_modes = common dso_local global %struct.TYPE_3__* null, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"Beyond HD analog capabilities\0A\00", align 1
@CFG_AWG_FLTR_MODE_HD = common dso_local global i64 0, align 8
@HDA_ANA_SRC_Y_CFG_ALT_2X = common dso_local global i64 0, align 8
@HDA_ANA_SRC_C_CFG_ALT_2X = common dso_local global i64 0, align 8
@coef_y_alt_2x = common dso_local global i64* null, align 8
@coef_c_alt_2x = common dso_local global i64* null, align 8
@CFG_AWG_FLTR_MODE_ED = common dso_local global i64 0, align 8
@HDA_ANA_SRC_Y_CFG_4X = common dso_local global i64 0, align 8
@HDA_ANA_SRC_C_CFG_4X = common dso_local global i64 0, align 8
@coef_yc_4x = common dso_local global i64* null, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"Not supported\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Undefined resolution\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Using HDA mode #%d\0A\00", align 1
@SCALE_CTRL_Y_DFLT = common dso_local global i64 0, align 8
@HDA_ANA_SCALE_CTRL_Y = common dso_local global i64 0, align 8
@SCALE_CTRL_CB_DFLT = common dso_local global i64 0, align 8
@HDA_ANA_SCALE_CTRL_CB = common dso_local global i64 0, align 8
@SCALE_CTRL_CR_DFLT = common dso_local global i64 0, align 8
@HDA_ANA_SCALE_CTRL_CR = common dso_local global i64 0, align 8
@HDA_ANA_SRC_Y_CFG = common dso_local global i64 0, align 8
@HDA_ANA_SRC_C_CFG = common dso_local global i64 0, align 8
@SAMPLER_COEF_NB = common dso_local global i64 0, align 8
@HDA_COEFF_Y_PH1_TAP123 = common dso_local global i64 0, align 8
@HDA_COEFF_C_PH1_TAP123 = common dso_local global i64 0, align 8
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@CFG_AWG_ASYNC_VSYNC_MTD = common dso_local global i64 0, align 8
@CFG_PBPR_SYNC_OFF_VAL = common dso_local global i64 0, align 8
@CFG_PBPR_SYNC_OFF_SHIFT = common dso_local global i64 0, align 8
@HDA_ANA_CFG = common dso_local global i64 0, align 8
@CFG_AWG_ASYNC_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @sti_hda_pre_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sti_hda_pre_enable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.sti_hda*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %12 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %13 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %12, i32 0, i32 0
  %14 = load %struct.sti_hda*, %struct.sti_hda** %13, align 8
  store %struct.sti_hda* %14, %struct.sti_hda** %3, align 8
  %15 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %17 = getelementptr inbounds %struct.sti_hda, %struct.sti_hda* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %174

21:                                               ; preds = %1
  %22 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %23 = getelementptr inbounds %struct.sti_hda, %struct.sti_hda* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @clk_prepare_enable(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %21
  %30 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %31 = getelementptr inbounds %struct.sti_hda, %struct.sti_hda* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @clk_prepare_enable(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %29
  %38 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %39 = getelementptr inbounds %struct.sti_hda, %struct.sti_hda* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @hda_get_mode_idx(i32 %41, i64* %6)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  %45 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %174

46:                                               ; preds = %37
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hda_supported_modes, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %68 [
    i32 130, label %52
    i32 129, label %54
    i32 131, label %60
    i32 128, label %66
  ]

52:                                               ; preds = %46
  %53 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %174

54:                                               ; preds = %46
  %55 = load i64, i64* @CFG_AWG_FLTR_MODE_HD, align 8
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* @HDA_ANA_SRC_Y_CFG_ALT_2X, align 8
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* @HDA_ANA_SRC_C_CFG_ALT_2X, align 8
  store i64 %57, i64* %8, align 8
  %58 = load i64*, i64** @coef_y_alt_2x, align 8
  store i64* %58, i64** %9, align 8
  %59 = load i64*, i64** @coef_c_alt_2x, align 8
  store i64* %59, i64** %10, align 8
  br label %70

60:                                               ; preds = %46
  %61 = load i64, i64* @CFG_AWG_FLTR_MODE_ED, align 8
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* @HDA_ANA_SRC_Y_CFG_4X, align 8
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* @HDA_ANA_SRC_C_CFG_4X, align 8
  store i64 %63, i64* %8, align 8
  %64 = load i64*, i64** @coef_yc_4x, align 8
  store i64* %64, i64** %9, align 8
  %65 = load i64*, i64** @coef_yc_4x, align 8
  store i64* %65, i64** %10, align 8
  br label %70

66:                                               ; preds = %46
  %67 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %174

68:                                               ; preds = %46
  %69 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %174

70:                                               ; preds = %60, %54
  %71 = load i64, i64* %6, align 8
  %72 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i64 %71)
  %73 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %74 = call i32 @hda_enable_hd_dacs(%struct.sti_hda* %73, i32 1)
  %75 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %76 = load i64, i64* @SCALE_CTRL_Y_DFLT, align 8
  %77 = load i64, i64* @HDA_ANA_SCALE_CTRL_Y, align 8
  %78 = call i32 @hda_write(%struct.sti_hda* %75, i64 %76, i64 %77)
  %79 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %80 = load i64, i64* @SCALE_CTRL_CB_DFLT, align 8
  %81 = load i64, i64* @HDA_ANA_SCALE_CTRL_CB, align 8
  %82 = call i32 @hda_write(%struct.sti_hda* %79, i64 %80, i64 %81)
  %83 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %84 = load i64, i64* @SCALE_CTRL_CR_DFLT, align 8
  %85 = load i64, i64* @HDA_ANA_SCALE_CTRL_CR, align 8
  %86 = call i32 @hda_write(%struct.sti_hda* %83, i64 %84, i64 %85)
  %87 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @HDA_ANA_SRC_Y_CFG, align 8
  %90 = call i32 @hda_write(%struct.sti_hda* %87, i64 %88, i64 %89)
  %91 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* @HDA_ANA_SRC_C_CFG, align 8
  %94 = call i32 @hda_write(%struct.sti_hda* %91, i64 %92, i64 %93)
  store i64 0, i64* %5, align 8
  br label %95

95:                                               ; preds = %120, %70
  %96 = load i64, i64* %5, align 8
  %97 = load i64, i64* @SAMPLER_COEF_NB, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %99, label %123

99:                                               ; preds = %95
  %100 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %101 = load i64*, i64** %9, align 8
  %102 = load i64, i64* %5, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @HDA_COEFF_Y_PH1_TAP123, align 8
  %106 = load i64, i64* %5, align 8
  %107 = mul i64 %106, 4
  %108 = add i64 %105, %107
  %109 = call i32 @hda_write(%struct.sti_hda* %100, i64 %104, i64 %108)
  %110 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %111 = load i64*, i64** %10, align 8
  %112 = load i64, i64* %5, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @HDA_COEFF_C_PH1_TAP123, align 8
  %116 = load i64, i64* %5, align 8
  %117 = mul i64 %116, 4
  %118 = add i64 %115, %117
  %119 = call i32 @hda_write(%struct.sti_hda* %110, i64 %114, i64 %118)
  br label %120

120:                                              ; preds = %99
  %121 = load i64, i64* %5, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %5, align 8
  br label %95

123:                                              ; preds = %95
  store i64 0, i64* %4, align 8
  %124 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %125 = getelementptr inbounds %struct.sti_hda, %struct.sti_hda* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  br label %134

132:                                              ; preds = %123
  %133 = load i64, i64* @CFG_AWG_ASYNC_VSYNC_MTD, align 8
  br label %134

134:                                              ; preds = %132, %131
  %135 = phi i64 [ 0, %131 ], [ %133, %132 ]
  %136 = load i64, i64* %4, align 8
  %137 = or i64 %136, %135
  store i64 %137, i64* %4, align 8
  %138 = load i64, i64* @CFG_PBPR_SYNC_OFF_VAL, align 8
  %139 = load i64, i64* @CFG_PBPR_SYNC_OFF_SHIFT, align 8
  %140 = shl i64 %138, %139
  %141 = load i64, i64* %4, align 8
  %142 = or i64 %141, %140
  store i64 %142, i64* %4, align 8
  %143 = load i64, i64* %11, align 8
  %144 = load i64, i64* %4, align 8
  %145 = or i64 %144, %143
  store i64 %145, i64* %4, align 8
  %146 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %147 = load i64, i64* %4, align 8
  %148 = load i64, i64* @HDA_ANA_CFG, align 8
  %149 = call i32 @hda_write(%struct.sti_hda* %146, i64 %147, i64 %148)
  %150 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hda_supported_modes, align 8
  %152 = load i64, i64* %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hda_supported_modes, align 8
  %157 = load i64, i64* %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @sti_hda_configure_awg(%struct.sti_hda* %150, i32 %155, i32 %160)
  %162 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %163 = load i64, i64* @HDA_ANA_CFG, align 8
  %164 = call i64 @hda_read(%struct.sti_hda* %162, i64 %163)
  store i64 %164, i64* %4, align 8
  %165 = load i64, i64* @CFG_AWG_ASYNC_EN, align 8
  %166 = load i64, i64* %4, align 8
  %167 = or i64 %166, %165
  store i64 %167, i64* %4, align 8
  %168 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %169 = load i64, i64* %4, align 8
  %170 = load i64, i64* @HDA_ANA_CFG, align 8
  %171 = call i32 @hda_write(%struct.sti_hda* %168, i64 %169, i64 %170)
  %172 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %173 = getelementptr inbounds %struct.sti_hda, %struct.sti_hda* %172, i32 0, i32 0
  store i32 1, i32* %173, align 4
  br label %174

174:                                              ; preds = %134, %68, %66, %52, %44, %20
  ret void
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, ...) #1

declare dso_local i64 @clk_prepare_enable(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @hda_get_mode_idx(i32, i64*) #1

declare dso_local i32 @hda_enable_hd_dacs(%struct.sti_hda*, i32) #1

declare dso_local i32 @hda_write(%struct.sti_hda*, i64, i64) #1

declare dso_local i32 @sti_hda_configure_awg(%struct.sti_hda*, i32, i32) #1

declare dso_local i64 @hda_read(%struct.sti_hda*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
