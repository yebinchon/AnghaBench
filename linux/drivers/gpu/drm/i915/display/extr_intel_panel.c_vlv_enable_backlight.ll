; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_vlv_enable_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_vlv_enable_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.intel_connector = type { %struct.intel_panel, %struct.TYPE_5__ }
%struct.intel_panel = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_8__ = type { i32 }

@BLM_PWM_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"backlight already enabled\0A\00", align 1
@BLM_POLARITY_I965 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, %struct.drm_connector_state*)* @vlv_enable_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_enable_backlight(%struct.intel_crtc_state* %0, %struct.drm_connector_state* %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.drm_connector_state*, align 8
  %5 = alloca %struct.intel_connector*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_panel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %4, align 8
  %11 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %12 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.intel_connector* @to_intel_connector(i32 %13)
  store %struct.intel_connector* %14, %struct.intel_connector** %5, align 8
  %15 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %16 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.drm_i915_private* @to_i915(i32 %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %6, align 8
  %20 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %21 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %20, i32 0, i32 0
  store %struct.intel_panel* %21, %struct.intel_panel** %7, align 8
  %22 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %23 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_8__* @to_intel_crtc(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @VLV_BLC_PWM_CTL2(i32 %29)
  %31 = call i32 @I915_READ(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @BLM_PWM_ENABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %2
  %37 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @BLM_PWM_ENABLE, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @VLV_BLC_PWM_CTL2(i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @I915_WRITE(i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %36, %2
  %47 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %48 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = shl i32 %50, 16
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @VLV_BLC_PWM_CTL(i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @I915_WRITE(i32 %53, i32 %54)
  %56 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %57 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %58 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @intel_panel_actually_set_backlight(%struct.drm_connector_state* %56, i32 %60)
  store i32 0, i32* %10, align 4
  %62 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %63 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %46
  %68 = load i32, i32* @BLM_POLARITY_I965, align 4
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %67, %46
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @VLV_BLC_PWM_CTL2(i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @I915_WRITE(i32 %73, i32 %74)
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @VLV_BLC_PWM_CTL2(i32 %76)
  %78 = call i32 @POSTING_READ(i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @VLV_BLC_PWM_CTL2(i32 %79)
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @BLM_PWM_ENABLE, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @I915_WRITE(i32 %80, i32 %83)
  ret void
}

declare dso_local %struct.intel_connector* @to_intel_connector(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.TYPE_8__* @to_intel_crtc(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @VLV_BLC_PWM_CTL2(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @VLV_BLC_PWM_CTL(i32) #1

declare dso_local i32 @intel_panel_actually_set_backlight(%struct.drm_connector_state*, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
