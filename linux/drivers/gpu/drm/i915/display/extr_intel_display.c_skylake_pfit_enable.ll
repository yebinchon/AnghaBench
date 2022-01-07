; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skylake_pfit_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skylake_pfit_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, i32, %struct.TYPE_8__, %struct.intel_crtc_scaler_state, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.intel_crtc_scaler_state = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@PS_SCALER_EN = common dso_local global i32 0, align 4
@PS_FILTER_MEDIUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @skylake_pfit_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skylake_pfit_enable(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_crtc_scaler_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %14 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %15 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.intel_crtc* @to_intel_crtc(i32 %17)
  store %struct.intel_crtc* %18, %struct.intel_crtc** %3, align 8
  %19 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %20 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.drm_i915_private* @to_i915(i32 %22)
  store %struct.drm_i915_private* %23, %struct.drm_i915_private** %4, align 8
  %24 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %25 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  %27 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %28 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %27, i32 0, i32 3
  store %struct.intel_crtc_scaler_state* %28, %struct.intel_crtc_scaler_state** %6, align 8
  %29 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %30 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %124

34:                                               ; preds = %1
  %35 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %36 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.intel_crtc_scaler_state, %struct.intel_crtc_scaler_state* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %124

44:                                               ; preds = %34
  %45 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %46 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = ashr i32 %48, 16
  %50 = and i32 %49, 65535
  store i32 %50, i32* %9, align 4
  %51 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %52 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, 65535
  store i32 %55, i32* %10, align 4
  %56 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %57 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = shl i32 %58, 16
  %60 = load i32, i32* %9, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* %11, align 4
  %62 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %63 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 16
  %66 = load i32, i32* %10, align 4
  %67 = sdiv i32 %65, %66
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @skl_scaler_calc_phase(i32 1, i32 %68, i32 0)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @skl_scaler_calc_phase(i32 1, i32 %70, i32 0)
  store i32 %71, i32* %8, align 4
  %72 = load %struct.intel_crtc_scaler_state*, %struct.intel_crtc_scaler_state** %6, align 8
  %73 = getelementptr inbounds %struct.intel_crtc_scaler_state, %struct.intel_crtc_scaler_state* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @SKL_PS_CTRL(i32 %76, i32 %77)
  %79 = load i32, i32* @PS_SCALER_EN, align 4
  %80 = load i32, i32* @PS_FILTER_MEDIUM, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.intel_crtc_scaler_state*, %struct.intel_crtc_scaler_state** %6, align 8
  %83 = getelementptr inbounds %struct.intel_crtc_scaler_state, %struct.intel_crtc_scaler_state* %82, i32 0, i32 1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %81, %89
  %91 = call i32 @I915_WRITE(i32 %78, i32 %90)
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @SKL_PS_VPHASE(i32 %92, i32 %93)
  %95 = call i32 @PS_Y_PHASE(i32 0)
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @PS_UV_RGB_PHASE(i32 %96)
  %98 = or i32 %95, %97
  %99 = call i32 @I915_WRITE_FW(i32 %94, i32 %98)
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @SKL_PS_HPHASE(i32 %100, i32 %101)
  %103 = call i32 @PS_Y_PHASE(i32 0)
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @PS_UV_RGB_PHASE(i32 %104)
  %106 = or i32 %103, %105
  %107 = call i32 @I915_WRITE_FW(i32 %102, i32 %106)
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @SKL_PS_WIN_POS(i32 %108, i32 %109)
  %111 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %112 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @I915_WRITE(i32 %110, i32 %114)
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @SKL_PS_WIN_SZ(i32 %116, i32 %117)
  %119 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %120 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @I915_WRITE(i32 %118, i32 %122)
  br label %124

124:                                              ; preds = %43, %44, %1
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @skl_scaler_calc_phase(i32, i32, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @SKL_PS_CTRL(i32, i32) #1

declare dso_local i32 @I915_WRITE_FW(i32, i32) #1

declare dso_local i32 @SKL_PS_VPHASE(i32, i32) #1

declare dso_local i32 @PS_Y_PHASE(i32) #1

declare dso_local i32 @PS_UV_RGB_PHASE(i32) #1

declare dso_local i32 @SKL_PS_HPHASE(i32, i32) #1

declare dso_local i32 @SKL_PS_WIN_POS(i32, i32) #1

declare dso_local i32 @SKL_PS_WIN_SZ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
