; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_display.c_cdv_intel_crtc_clock_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_display.c_cdv_intel_crtc_clock_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.TYPE_4__, %struct.psb_offset* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.psb_pipe* }
%struct.TYPE_3__ = type { i32 }
%struct.psb_pipe = type { i32, i32, i32 }
%struct.psb_offset = type { i32, i32, i32 }
%struct.drm_crtc = type { i32 }
%struct.gma_crtc = type { i32 }
%struct.gma_clock_t = type { i32, i32, i32, i32, i32, i32 }

@DISPLAY_RATE_SELECT_FPA1 = common dso_local global i32 0, align 4
@LVDS = common dso_local global i32 0, align 4
@LVDS_PORT_EN = common dso_local global i32 0, align 4
@FP_M1_DIV_MASK = common dso_local global i32 0, align 4
@FP_M1_DIV_SHIFT = common dso_local global i32 0, align 4
@FP_M2_DIV_MASK = common dso_local global i32 0, align 4
@FP_M2_DIV_SHIFT = common dso_local global i32 0, align 4
@FP_N_DIV_MASK = common dso_local global i32 0, align 4
@FP_N_DIV_SHIFT = common dso_local global i32 0, align 4
@DPLL_FPA01_P1_POST_DIV_MASK_I830_LVDS = common dso_local global i32 0, align 4
@DPLL_FPA01_P1_POST_DIV_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"PLL %d\0A\00", align 1
@PLL_REF_INPUT_MASK = common dso_local global i32 0, align 4
@PLLB_REF_INPUT_SPREADSPECTRUMIN = common dso_local global i32 0, align 4
@PLL_P1_DIVIDE_BY_TWO = common dso_local global i32 0, align 4
@DPLL_FPA01_P1_POST_DIV_MASK_I830 = common dso_local global i32 0, align 4
@PLL_P2_DIVIDE_BY_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_crtc*)* @cdv_intel_crtc_clock_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdv_intel_crtc_clock_get(%struct.drm_device* %0, %struct.drm_crtc* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_psb_private*, align 8
  %6 = alloca %struct.gma_crtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.psb_offset*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gma_clock_t, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.psb_pipe*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %4, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 1
  %16 = load %struct.drm_psb_private*, %struct.drm_psb_private** %15, align 8
  store %struct.drm_psb_private* %16, %struct.drm_psb_private** %5, align 8
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %18 = call %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc* %17)
  store %struct.gma_crtc* %18, %struct.gma_crtc** %6, align 8
  %19 = load %struct.gma_crtc*, %struct.gma_crtc** %6, align 8
  %20 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %23 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %22, i32 0, i32 1
  %24 = load %struct.psb_offset*, %struct.psb_offset** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %24, i64 %26
  store %struct.psb_offset* %27, %struct.psb_offset** %8, align 8
  %28 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %29 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.psb_pipe*, %struct.psb_pipe** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %31, i64 %33
  store %struct.psb_pipe* %34, %struct.psb_pipe** %13, align 8
  %35 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %36 = call i64 @gma_power_begin(%struct.drm_device* %35, i32 0)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %2
  %39 = load %struct.psb_offset*, %struct.psb_offset** %8, align 8
  %40 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @REG_READ(i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @DISPLAY_RATE_SELECT_FPA1, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load %struct.psb_offset*, %struct.psb_offset** %8, align 8
  %49 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @REG_READ(i32 %50)
  store i32 %51, i32* %10, align 4
  br label %57

52:                                               ; preds = %38
  %53 = load %struct.psb_offset*, %struct.psb_offset** %8, align 8
  %54 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @REG_READ(i32 %55)
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32, i32* @LVDS, align 4
  %62 = call i32 @REG_READ(i32 %61)
  %63 = load i32, i32* @LVDS_PORT_EN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %60, %57
  %67 = phi i1 [ false, %57 ], [ %65, %60 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %12, align 4
  %69 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %70 = call i32 @gma_power_end(%struct.drm_device* %69)
  br label %102

71:                                               ; preds = %2
  %72 = load %struct.psb_pipe*, %struct.psb_pipe** %13, align 8
  %73 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @DISPLAY_RATE_SELECT_FPA1, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load %struct.psb_pipe*, %struct.psb_pipe** %13, align 8
  %81 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %10, align 4
  br label %87

83:                                               ; preds = %71
  %84 = load %struct.psb_pipe*, %struct.psb_pipe** %13, align 8
  %85 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %83, %79
  %88 = load i32, i32* %7, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %92 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @LVDS_PORT_EN, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br label %99

99:                                               ; preds = %90, %87
  %100 = phi i1 [ false, %87 ], [ %98, %90 ]
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %99, %66
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @FP_M1_DIV_MASK, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* @FP_M1_DIV_SHIFT, align 4
  %107 = ashr i32 %105, %106
  %108 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 0
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @FP_M2_DIV_MASK, align 4
  %111 = and i32 %109, %110
  %112 = load i32, i32* @FP_M2_DIV_SHIFT, align 4
  %113 = ashr i32 %111, %112
  %114 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 1
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @FP_N_DIV_MASK, align 4
  %117 = and i32 %115, %116
  %118 = load i32, i32* @FP_N_DIV_SHIFT, align 4
  %119 = ashr i32 %117, %118
  %120 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 2
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %153

123:                                              ; preds = %102
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_MASK_I830_LVDS, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_SHIFT, align 4
  %128 = ashr i32 %126, %127
  %129 = call i32 @ffs(i32 %128)
  %130 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 3
  store i32 %129, i32* %130, align 4
  %131 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %123
  %135 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 3
  store i32 4, i32* %135, align 4
  %136 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %137 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @dev_err(i32 %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %134, %123
  %142 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 4
  store i32 14, i32* %142, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @PLL_REF_INPUT_MASK, align 4
  %145 = and i32 %143, %144
  %146 = load i32, i32* @PLLB_REF_INPUT_SPREADSPECTRUMIN, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = call i32 @i8xx_clock(i32 66000, %struct.gma_clock_t* %11)
  br label %152

150:                                              ; preds = %141
  %151 = call i32 @i8xx_clock(i32 48000, %struct.gma_clock_t* %11)
  br label %152

152:                                              ; preds = %150, %148
  br label %179

153:                                              ; preds = %102
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* @PLL_P1_DIVIDE_BY_TWO, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 3
  store i32 2, i32* %159, align 4
  br label %168

160:                                              ; preds = %153
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_MASK_I830, align 4
  %163 = and i32 %161, %162
  %164 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_SHIFT, align 4
  %165 = ashr i32 %163, %164
  %166 = add nsw i32 %165, 2
  %167 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 3
  store i32 %166, i32* %167, align 4
  br label %168

168:                                              ; preds = %160, %158
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* @PLL_P2_DIVIDE_BY_4, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 4
  store i32 4, i32* %174, align 4
  br label %177

175:                                              ; preds = %168
  %176 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 4
  store i32 2, i32* %176, align 4
  br label %177

177:                                              ; preds = %175, %173
  %178 = call i32 @i8xx_clock(i32 48000, %struct.gma_clock_t* %11)
  br label %179

179:                                              ; preds = %177, %152
  %180 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  ret i32 %181
}

declare dso_local %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @gma_power_begin(%struct.drm_device*, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @gma_power_end(%struct.drm_device*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @i8xx_clock(i32, %struct.gma_clock_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
