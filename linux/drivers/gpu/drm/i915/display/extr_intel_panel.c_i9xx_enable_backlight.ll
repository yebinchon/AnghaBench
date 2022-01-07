; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_i9xx_enable_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_i9xx_enable_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.intel_connector = type { %struct.intel_panel, %struct.TYPE_3__ }
%struct.intel_panel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@BLC_PWM_CTL = common dso_local global i32 0, align 4
@BACKLIGHT_DUTY_CYCLE_MASK_PNV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"backlight already enabled\0A\00", align 1
@BLM_LEGACY_MODE = common dso_local global i32 0, align 4
@BLM_POLARITY_PNV = common dso_local global i32 0, align 4
@BLC_HIST_CTL = common dso_local global i32 0, align 4
@BLM_HISTOGRAM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, %struct.drm_connector_state*)* @i9xx_enable_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i9xx_enable_backlight(%struct.intel_crtc_state* %0, %struct.drm_connector_state* %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.drm_connector_state*, align 8
  %5 = alloca %struct.intel_connector*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_panel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %4, align 8
  %10 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %11 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.intel_connector* @to_intel_connector(i32 %12)
  store %struct.intel_connector* %13, %struct.intel_connector** %5, align 8
  %14 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %15 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.drm_i915_private* @to_i915(i32 %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %6, align 8
  %19 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %20 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %19, i32 0, i32 0
  store %struct.intel_panel* %20, %struct.intel_panel** %7, align 8
  %21 = load i32, i32* @BLC_PWM_CTL, align 4
  %22 = call i32 @I915_READ(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @BACKLIGHT_DUTY_CYCLE_MASK_PNV, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @BLC_PWM_CTL, align 4
  %30 = call i32 @I915_WRITE(i32 %29, i32 0)
  br label %31

31:                                               ; preds = %27, %2
  %32 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %33 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %9, align 4
  %36 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %37 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* %9, align 4
  %43 = sdiv i32 %42, 255
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %41, %31
  %45 = load i32, i32* %9, align 4
  %46 = shl i32 %45, 17
  store i32 %46, i32* %8, align 4
  %47 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %48 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load i32, i32* @BLM_LEGACY_MODE, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %52, %44
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %58 = call i64 @IS_PINEVIEW(%struct.drm_i915_private* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %62 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* @BLM_POLARITY_PNV, align 4
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %66, %60, %56
  %71 = load i32, i32* @BLC_PWM_CTL, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @I915_WRITE(i32 %71, i32 %72)
  %74 = load i32, i32* @BLC_PWM_CTL, align 4
  %75 = call i32 @POSTING_READ(i32 %74)
  %76 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %77 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %78 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @intel_panel_actually_set_backlight(%struct.drm_connector_state* %76, i32 %80)
  %82 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %83 = call i64 @IS_GEN(%struct.drm_i915_private* %82, i32 2)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %70
  %86 = load i32, i32* @BLC_HIST_CTL, align 4
  %87 = load i32, i32* @BLM_HISTOGRAM_ENABLE, align 4
  %88 = call i32 @I915_WRITE(i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %70
  ret void
}

declare dso_local %struct.intel_connector* @to_intel_connector(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i64 @IS_PINEVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @intel_panel_actually_set_backlight(%struct.drm_connector_state*, i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
