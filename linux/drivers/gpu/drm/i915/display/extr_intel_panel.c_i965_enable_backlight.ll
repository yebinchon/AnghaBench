; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_i965_enable_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_i965_enable_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.drm_connector_state = type { i32, i32 }
%struct.intel_connector = type { %struct.intel_panel, %struct.TYPE_4__ }
%struct.intel_panel = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_6__ = type { i32 }

@BLC_PWM_CTL2 = common dso_local global i32 0, align 4
@BLM_PWM_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"backlight already enabled\0A\00", align 1
@BLC_PWM_CTL = common dso_local global i32 0, align 4
@BLM_COMBINATION_MODE = common dso_local global i32 0, align 4
@BLM_POLARITY_I965 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, %struct.drm_connector_state*)* @i965_enable_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i965_enable_backlight(%struct.intel_crtc_state* %0, %struct.drm_connector_state* %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.drm_connector_state*, align 8
  %5 = alloca %struct.intel_connector*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_panel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %4, align 8
  %12 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %13 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.intel_connector* @to_intel_connector(i32 %14)
  store %struct.intel_connector* %15, %struct.intel_connector** %5, align 8
  %16 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %17 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.drm_i915_private* @to_i915(i32 %19)
  store %struct.drm_i915_private* %20, %struct.drm_i915_private** %6, align 8
  %21 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %22 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %21, i32 0, i32 0
  store %struct.intel_panel* %22, %struct.intel_panel** %7, align 8
  %23 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %24 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_6__* @to_intel_crtc(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @BLC_PWM_CTL2, align 4
  %30 = call i32 @I915_READ(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @BLM_PWM_ENABLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %2
  %36 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @BLM_PWM_ENABLE, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @BLC_PWM_CTL2, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @I915_WRITE(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %35, %2
  %45 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %46 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %11, align 4
  %49 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %50 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* %11, align 4
  %56 = sdiv i32 %55, 255
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %54, %44
  %58 = load i32, i32* %11, align 4
  %59 = shl i32 %58, 16
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* @BLC_PWM_CTL, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @I915_WRITE(i32 %60, i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @BLM_PIPE(i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %66 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %57
  %71 = load i32, i32* @BLM_COMBINATION_MODE, align 4
  %72 = load i32, i32* %10, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %70, %57
  %75 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %76 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32, i32* @BLM_POLARITY_I965, align 4
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %80, %74
  %85 = load i32, i32* @BLC_PWM_CTL2, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @I915_WRITE(i32 %85, i32 %86)
  %88 = load i32, i32* @BLC_PWM_CTL2, align 4
  %89 = call i32 @POSTING_READ(i32 %88)
  %90 = load i32, i32* @BLC_PWM_CTL2, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @BLM_PWM_ENABLE, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @I915_WRITE(i32 %90, i32 %93)
  %95 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %96 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %97 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @intel_panel_actually_set_backlight(%struct.drm_connector_state* %95, i32 %99)
  ret void
}

declare dso_local %struct.intel_connector* @to_intel_connector(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.TYPE_6__* @to_intel_crtc(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @BLM_PIPE(i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @intel_panel_actually_set_backlight(%struct.drm_connector_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
