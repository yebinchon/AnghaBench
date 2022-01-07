; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_intel_tv_get_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_intel_tv_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc_state = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_i915_private = type { i32 }
%struct.tv_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@INTEL_OUTPUT_TVOUT = common dso_local global i32 0, align 4
@TV_CTL = common dso_local global i32 0, align 4
@TV_H_CTL_1 = common dso_local global i32 0, align 4
@TV_H_CTL_3 = common dso_local global i32 0, align 4
@TV_V_CTL_1 = common dso_local global i32 0, align 4
@TV_V_CTL_2 = common dso_local global i32 0, align 4
@TV_HTOTAL_MASK = common dso_local global i32 0, align 4
@TV_HTOTAL_SHIFT = common dso_local global i32 0, align 4
@TV_HSYNC_END_MASK = common dso_local global i32 0, align 4
@TV_HSYNC_END_SHIFT = common dso_local global i32 0, align 4
@TV_HBLANK_START_MASK = common dso_local global i32 0, align 4
@TV_HBLANK_START_SHIFT = common dso_local global i32 0, align 4
@TV_HBLANK_END_SHIFT = common dso_local global i32 0, align 4
@TV_NBR_END_MASK = common dso_local global i32 0, align 4
@TV_NBR_END_SHIFT = common dso_local global i32 0, align 4
@TV_VI_END_F1_MASK = common dso_local global i32 0, align 4
@TV_VI_END_F1_SHIFT = common dso_local global i32 0, align 4
@TV_VI_END_F2_MASK = common dso_local global i32 0, align 4
@TV_VI_END_F2_SHIFT = common dso_local global i32 0, align 4
@TV_VSYNC_LEN_MASK = common dso_local global i32 0, align 4
@TV_VSYNC_LEN_SHIFT = common dso_local global i32 0, align 4
@TV_VSYNC_START_F1_MASK = common dso_local global i32 0, align 4
@TV_VSYNC_START_F1_SHIFT = common dso_local global i32 0, align 4
@TV_VSYNC_START_F2_MASK = common dso_local global i32 0, align 4
@TV_VSYNC_START_F2_SHIFT = common dso_local global i32 0, align 4
@TV_PROGRESSIVE = common dso_local global i32 0, align 4
@TV_OVERSAMPLE_MASK = common dso_local global i32 0, align 4
@TV_WIN_POS = common dso_local global i32 0, align 4
@TV_WIN_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"TV mode:\0A\00", align 1
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@I915_MODE_FLAG_USE_SCANLINE_COUNTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*)* @intel_tv_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_tv_get_config(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_display_mode, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tv_mode, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %21 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %22 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.drm_i915_private* @to_i915(i32 %24)
  store %struct.drm_i915_private* %25, %struct.drm_i915_private** %5, align 8
  %26 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %27 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store %struct.drm_display_mode* %28, %struct.drm_display_mode** %6, align 8
  %29 = bitcast %struct.drm_display_mode* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 32, i1 false)
  %30 = bitcast %struct.tv_mode* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %30, i8 0, i64 52, i1 false)
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %15, align 4
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* @INTEL_OUTPUT_TVOUT, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %40 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @TV_CTL, align 4
  %44 = call i32 @I915_READ(i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @TV_H_CTL_1, align 4
  %46 = call i32 @I915_READ(i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* @TV_H_CTL_3, align 4
  %48 = call i32 @I915_READ(i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* @TV_V_CTL_1, align 4
  %50 = call i32 @I915_READ(i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* @TV_V_CTL_2, align 4
  %52 = call i32 @I915_READ(i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @TV_HTOTAL_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @TV_HTOTAL_SHIFT, align 4
  %57 = ashr i32 %55, %56
  %58 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %14, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @TV_HSYNC_END_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @TV_HSYNC_END_SHIFT, align 4
  %63 = ashr i32 %61, %62
  %64 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %14, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @TV_HBLANK_START_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @TV_HBLANK_START_SHIFT, align 4
  %69 = ashr i32 %67, %68
  %70 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %14, i32 0, i32 2
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @TV_HSYNC_END_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @TV_HBLANK_END_SHIFT, align 4
  %75 = ashr i32 %73, %74
  %76 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %14, i32 0, i32 3
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @TV_NBR_END_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @TV_NBR_END_SHIFT, align 4
  %81 = ashr i32 %79, %80
  %82 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %14, i32 0, i32 4
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @TV_VI_END_F1_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @TV_VI_END_F1_SHIFT, align 4
  %87 = ashr i32 %85, %86
  %88 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %14, i32 0, i32 5
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @TV_VI_END_F2_MASK, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* @TV_VI_END_F2_SHIFT, align 4
  %93 = ashr i32 %91, %92
  %94 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %14, i32 0, i32 6
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @TV_VSYNC_LEN_MASK, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* @TV_VSYNC_LEN_SHIFT, align 4
  %99 = ashr i32 %97, %98
  %100 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %14, i32 0, i32 7
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @TV_VSYNC_START_F1_MASK, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* @TV_VSYNC_START_F1_SHIFT, align 4
  %105 = ashr i32 %103, %104
  %106 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %14, i32 0, i32 8
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @TV_VSYNC_START_F2_MASK, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* @TV_VSYNC_START_F2_SHIFT, align 4
  %111 = ashr i32 %109, %110
  %112 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %14, i32 0, i32 9
  store i32 %111, i32* %112, align 4
  %113 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %114 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %14, i32 0, i32 12
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @TV_PROGRESSIVE, align 4
  %119 = and i32 %117, %118
  %120 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %14, i32 0, i32 10
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @TV_OVERSAMPLE_MASK, align 4
  %123 = and i32 %121, %122
  switch i32 %123, label %130 [
    i32 128, label %124
    i32 129, label %126
    i32 130, label %128
  ]

124:                                              ; preds = %2
  %125 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %14, i32 0, i32 11
  store i32 8, i32* %125, align 4
  br label %132

126:                                              ; preds = %2
  %127 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %14, i32 0, i32 11
  store i32 4, i32* %127, align 4
  br label %132

128:                                              ; preds = %2
  %129 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %14, i32 0, i32 11
  store i32 2, i32* %129, align 4
  br label %132

130:                                              ; preds = %2
  %131 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %14, i32 0, i32 11
  store i32 1, i32* %131, align 4
  br label %132

132:                                              ; preds = %130, %128, %126, %124
  %133 = load i32, i32* @TV_WIN_POS, align 4
  %134 = call i32 @I915_READ(i32 %133)
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* %13, align 4
  %136 = ashr i32 %135, 16
  store i32 %136, i32* %19, align 4
  %137 = load i32, i32* %13, align 4
  %138 = and i32 %137, 65535
  store i32 %138, i32* %20, align 4
  %139 = load i32, i32* @TV_WIN_SIZE, align 4
  %140 = call i32 @I915_READ(i32 %139)
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = ashr i32 %141, 16
  store i32 %142, i32* %17, align 4
  %143 = load i32, i32* %13, align 4
  %144 = and i32 %143, 65535
  store i32 %144, i32* %18, align 4
  %145 = call i32 @intel_tv_mode_to_mode(%struct.drm_display_mode* %7, %struct.tv_mode* %14)
  %146 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %147 = call i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode* %7)
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %19, align 4
  %150 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %7, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %17, align 4
  %153 = sub nsw i32 %151, %152
  %154 = load i32, i32* %19, align 4
  %155 = sub nsw i32 %153, %154
  %156 = call i32 @intel_tv_scale_mode_horiz(%struct.drm_display_mode* %7, i32 %148, i32 %149, i32 %155)
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %20, align 4
  %159 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %7, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %18, align 4
  %162 = sub nsw i32 %160, %161
  %163 = load i32, i32* %20, align 4
  %164 = sub nsw i32 %162, %163
  %165 = call i32 @intel_tv_scale_mode_vert(%struct.drm_display_mode* %7, i32 %157, i32 %158, i32 %164)
  %166 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %7, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %169 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 4
  %170 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %171 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %132
  %177 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %178 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = sdiv i32 %179, 2
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %176, %132
  %182 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %183 = call i64 @IS_I965GM(%struct.drm_i915_private* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %181
  %186 = load i32, i32* @I915_MODE_FLAG_USE_SCANLINE_COUNTER, align 4
  %187 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %188 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %187, i32 0, i32 7
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %185, %181
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @intel_tv_mode_to_mode(%struct.drm_display_mode*, %struct.tv_mode*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode*) #1

declare dso_local i32 @intel_tv_scale_mode_horiz(%struct.drm_display_mode*, i32, i32, i32) #1

declare dso_local i32 @intel_tv_scale_mode_vert(%struct.drm_display_mode*, i32, i32, i32) #1

declare dso_local i64 @IS_I965GM(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
