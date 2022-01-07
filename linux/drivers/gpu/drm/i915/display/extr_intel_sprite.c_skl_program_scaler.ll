; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_skl_program_scaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_skl_program_scaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.intel_scaler* }
%struct.intel_scaler = type { i32 }
%struct.intel_plane_state = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_15__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.drm_i915_private = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@PS_SCALER_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_plane*, %struct.intel_crtc_state*, %struct.intel_plane_state*)* @skl_program_scaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_program_scaler(%struct.intel_plane* %0, %struct.intel_crtc_state* %1, %struct.intel_plane_state* %2) #0 {
  %4 = alloca %struct.intel_plane*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.intel_plane_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.intel_scaler*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.intel_plane* %0, %struct.intel_plane** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.intel_plane_state* %2, %struct.intel_plane_state** %6, align 8
  %21 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %22 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.drm_i915_private* @to_i915(i32 %24)
  store %struct.drm_i915_private* %25, %struct.drm_i915_private** %7, align 8
  %26 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %27 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %30 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %9, align 4
  %32 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %33 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load %struct.intel_scaler*, %struct.intel_scaler** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.intel_scaler, %struct.intel_scaler* %35, i64 %37
  store %struct.intel_scaler* %38, %struct.intel_scaler** %10, align 8
  %39 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %40 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %11, align 4
  %44 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %45 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %50 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = call i32 @drm_rect_width(%struct.TYPE_15__* %51)
  store i32 %52, i32* %13, align 4
  %53 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %54 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = call i32 @drm_rect_height(%struct.TYPE_15__* %55)
  store i32 %56, i32* %14, align 4
  %57 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %58 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %61 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i32, i32* @INT_MAX, align 4
  %64 = call i32 @drm_rect_calc_hscale(i32* %59, %struct.TYPE_15__* %62, i32 0, i32 %63)
  store i32 %64, i32* %19, align 4
  %65 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %66 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  %68 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %69 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load i32, i32* @INT_MAX, align 4
  %72 = call i32 @drm_rect_calc_vscale(i32* %67, %struct.TYPE_15__* %70, i32 0, i32 %71)
  store i32 %72, i32* %20, align 4
  %73 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %74 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @is_planar_yuv_format(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %3
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %85 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %86 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @icl_is_hdr_plane(%struct.drm_i915_private* %84, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %19, align 4
  %92 = call i64 @skl_scaler_calc_phase(i32 1, i32 %91, i32 0)
  store i64 %92, i64* %15, align 8
  %93 = load i32, i32* %20, align 4
  %94 = call i64 @skl_scaler_calc_phase(i32 1, i32 %93, i32 0)
  store i64 %94, i64* %17, align 8
  %95 = load i32, i32* %19, align 4
  %96 = call i64 @skl_scaler_calc_phase(i32 2, i32 %95, i32 1)
  store i64 %96, i64* %16, align 8
  %97 = load i32, i32* %20, align 4
  %98 = call i64 @skl_scaler_calc_phase(i32 2, i32 %97, i32 0)
  store i64 %98, i64* %18, align 8
  br label %104

99:                                               ; preds = %83, %3
  store i64 0, i64* %15, align 8
  store i64 0, i64* %17, align 8
  %100 = load i32, i32* %19, align 4
  %101 = call i64 @skl_scaler_calc_phase(i32 1, i32 %100, i32 0)
  store i64 %101, i64* %16, align 8
  %102 = load i32, i32* %20, align 4
  %103 = call i64 @skl_scaler_calc_phase(i32 1, i32 %102, i32 0)
  store i64 %103, i64* %18, align 8
  br label %104

104:                                              ; preds = %99, %90
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @SKL_PS_CTRL(i32 %105, i32 %106)
  %108 = load i32, i32* @PS_SCALER_EN, align 4
  %109 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %110 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @PS_PLANE_SEL(i32 %111)
  %113 = or i32 %108, %112
  %114 = load %struct.intel_scaler*, %struct.intel_scaler** %10, align 8
  %115 = getelementptr inbounds %struct.intel_scaler, %struct.intel_scaler* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %113, %116
  %118 = call i32 @I915_WRITE_FW(i32 %107, i32 %117)
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @SKL_PS_VPHASE(i32 %119, i32 %120)
  %122 = load i64, i64* %17, align 8
  %123 = call i32 @PS_Y_PHASE(i64 %122)
  %124 = load i64, i64* %18, align 8
  %125 = call i32 @PS_UV_RGB_PHASE(i64 %124)
  %126 = or i32 %123, %125
  %127 = call i32 @I915_WRITE_FW(i32 %121, i32 %126)
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @SKL_PS_HPHASE(i32 %128, i32 %129)
  %131 = load i64, i64* %15, align 8
  %132 = call i32 @PS_Y_PHASE(i64 %131)
  %133 = load i64, i64* %16, align 8
  %134 = call i32 @PS_UV_RGB_PHASE(i64 %133)
  %135 = or i32 %132, %134
  %136 = call i32 @I915_WRITE_FW(i32 %130, i32 %135)
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @SKL_PS_WIN_POS(i32 %137, i32 %138)
  %140 = load i32, i32* %11, align 4
  %141 = shl i32 %140, 16
  %142 = load i32, i32* %12, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @I915_WRITE_FW(i32 %139, i32 %143)
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @SKL_PS_WIN_SZ(i32 %145, i32 %146)
  %148 = load i32, i32* %13, align 4
  %149 = shl i32 %148, 16
  %150 = load i32, i32* %14, align 4
  %151 = or i32 %149, %150
  %152 = call i32 @I915_WRITE_FW(i32 %147, i32 %151)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @drm_rect_width(%struct.TYPE_15__*) #1

declare dso_local i32 @drm_rect_height(%struct.TYPE_15__*) #1

declare dso_local i32 @drm_rect_calc_hscale(i32*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @drm_rect_calc_vscale(i32*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @is_planar_yuv_format(i32) #1

declare dso_local i32 @icl_is_hdr_plane(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @skl_scaler_calc_phase(i32, i32, i32) #1

declare dso_local i32 @I915_WRITE_FW(i32, i32) #1

declare dso_local i32 @SKL_PS_CTRL(i32, i32) #1

declare dso_local i32 @PS_PLANE_SEL(i32) #1

declare dso_local i32 @SKL_PS_VPHASE(i32, i32) #1

declare dso_local i32 @PS_Y_PHASE(i64) #1

declare dso_local i32 @PS_UV_RGB_PHASE(i64) #1

declare dso_local i32 @SKL_PS_HPHASE(i32, i32) #1

declare dso_local i32 @SKL_PS_WIN_POS(i32, i32) #1

declare dso_local i32 @SKL_PS_WIN_SZ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
