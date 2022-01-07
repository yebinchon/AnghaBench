; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skylake_get_pfit_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skylake_get_pfit_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_5__, %struct.intel_crtc_scaler_state }
%struct.TYPE_5__ = type { i32, i8*, i8* }
%struct.intel_crtc_scaler_state = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@PS_SCALER_EN = common dso_local global i32 0, align 4
@PS_PLANE_SEL_MASK = common dso_local global i32 0, align 4
@SKL_CRTC_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.intel_crtc_state*)* @skylake_get_pfit_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skylake_get_pfit_config(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_crtc_scaler_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %11 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %6, align 8
  %17 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %18 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %17, i32 0, i32 1
  store %struct.intel_crtc_scaler_state* %18, %struct.intel_crtc_scaler_state** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %73, %2
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %22 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %76

25:                                               ; preds = %19
  %26 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %27 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @SKL_PS_CTRL(i32 %28, i32 %29)
  %31 = call i8* @I915_READ(i32 %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @PS_SCALER_EN, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %25
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @PS_PLANE_SEL_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %72, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %9, align 4
  %44 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %45 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %48 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @SKL_PS_WIN_POS(i32 %49, i32 %50)
  %52 = call i8* @I915_READ(i32 %51)
  %53 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %54 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  store i8* %52, i8** %55, align 8
  %56 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %57 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @SKL_PS_WIN_SZ(i32 %58, i32 %59)
  %61 = call i8* @I915_READ(i32 %60)
  %62 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %63 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i8* %61, i8** %64, align 8
  %65 = load %struct.intel_crtc_scaler_state*, %struct.intel_crtc_scaler_state** %7, align 8
  %66 = getelementptr inbounds %struct.intel_crtc_scaler_state, %struct.intel_crtc_scaler_state* %65, i32 0, i32 2
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 4
  br label %76

72:                                               ; preds = %37, %25
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %19

76:                                               ; preds = %42, %19
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.intel_crtc_scaler_state*, %struct.intel_crtc_scaler_state** %7, align 8
  %79 = getelementptr inbounds %struct.intel_crtc_scaler_state, %struct.intel_crtc_scaler_state* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %9, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load i32, i32* @SKL_CRTC_INDEX, align 4
  %84 = shl i32 1, %83
  %85 = load %struct.intel_crtc_scaler_state*, %struct.intel_crtc_scaler_state** %7, align 8
  %86 = getelementptr inbounds %struct.intel_crtc_scaler_state, %struct.intel_crtc_scaler_state* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %97

89:                                               ; preds = %76
  %90 = load i32, i32* @SKL_CRTC_INDEX, align 4
  %91 = shl i32 1, %90
  %92 = xor i32 %91, -1
  %93 = load %struct.intel_crtc_scaler_state*, %struct.intel_crtc_scaler_state** %7, align 8
  %94 = getelementptr inbounds %struct.intel_crtc_scaler_state, %struct.intel_crtc_scaler_state* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %89, %82
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i8* @I915_READ(i32) #1

declare dso_local i32 @SKL_PS_CTRL(i32, i32) #1

declare dso_local i32 @SKL_PS_WIN_POS(i32, i32) #1

declare dso_local i32 @SKL_PS_WIN_SZ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
