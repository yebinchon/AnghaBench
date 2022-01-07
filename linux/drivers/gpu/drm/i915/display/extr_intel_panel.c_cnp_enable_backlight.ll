; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_cnp_enable_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_cnp_enable_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.intel_connector = type { %struct.intel_panel, %struct.TYPE_3__ }
%struct.intel_panel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@BXT_BLC_PWM_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"backlight already enabled\0A\00", align 1
@BXT_BLC_PWM_POLARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, %struct.drm_connector_state*)* @cnp_enable_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnp_enable_backlight(%struct.intel_crtc_state* %0, %struct.drm_connector_state* %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.drm_connector_state*, align 8
  %5 = alloca %struct.intel_connector*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_panel*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %4, align 8
  %9 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %10 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.intel_connector* @to_intel_connector(i32 %11)
  store %struct.intel_connector* %12, %struct.intel_connector** %5, align 8
  %13 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %14 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.drm_i915_private* @to_i915(i32 %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %6, align 8
  %18 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %19 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %18, i32 0, i32 0
  store %struct.intel_panel* %19, %struct.intel_panel** %7, align 8
  %20 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %21 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @BXT_BLC_PWM_CTL(i32 %23)
  %25 = call i32 @I915_READ(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @BXT_BLC_PWM_ENABLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %2
  %31 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @BXT_BLC_PWM_ENABLE, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %37 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @BXT_BLC_PWM_CTL(i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @I915_WRITE(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %30, %2
  %44 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %45 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @BXT_BLC_PWM_FREQ(i32 %47)
  %49 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %50 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @I915_WRITE(i32 %48, i32 %52)
  %54 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %55 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %56 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @intel_panel_actually_set_backlight(%struct.drm_connector_state* %54, i32 %58)
  store i32 0, i32* %8, align 4
  %60 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %61 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %43
  %66 = load i32, i32* @BXT_BLC_PWM_POLARITY, align 4
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %65, %43
  %70 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %71 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @BXT_BLC_PWM_CTL(i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @I915_WRITE(i32 %74, i32 %75)
  %77 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %78 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @BXT_BLC_PWM_CTL(i32 %80)
  %82 = call i32 @POSTING_READ(i32 %81)
  %83 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %84 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @BXT_BLC_PWM_CTL(i32 %86)
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @BXT_BLC_PWM_ENABLE, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @I915_WRITE(i32 %87, i32 %90)
  ret void
}

declare dso_local %struct.intel_connector* @to_intel_connector(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @BXT_BLC_PWM_CTL(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @BXT_BLC_PWM_FREQ(i32) #1

declare dso_local i32 @intel_panel_actually_set_backlight(%struct.drm_connector_state*, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
