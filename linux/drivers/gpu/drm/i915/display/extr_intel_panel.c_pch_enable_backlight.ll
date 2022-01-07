; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_pch_enable_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_pch_enable_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.intel_connector = type { %struct.intel_panel, %struct.TYPE_3__ }
%struct.intel_panel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@BLC_PWM_CPU_CTL2 = common dso_local global i32 0, align 4
@BLM_PWM_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cpu backlight already enabled\0A\00", align 1
@BLC_PWM_PCH_CTL1 = common dso_local global i32 0, align 4
@BLM_PCH_PWM_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"pch backlight already enabled\0A\00", align 1
@TRANSCODER_EDP = common dso_local global i32 0, align 4
@BLM_TRANSCODER_EDP = common dso_local global i32 0, align 4
@BLC_PWM_PCH_CTL2 = common dso_local global i32 0, align 4
@BLM_PCH_POLARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, %struct.drm_connector_state*)* @pch_enable_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_enable_backlight(%struct.intel_crtc_state* %0, %struct.drm_connector_state* %1) #0 {
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
  %13 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.intel_connector* @to_intel_connector(i32 %14)
  store %struct.intel_connector* %15, %struct.intel_connector** %5, align 8
  %16 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %17 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.drm_i915_private* @to_i915(i32 %19)
  store %struct.drm_i915_private* %20, %struct.drm_i915_private** %6, align 8
  %21 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %22 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %21, i32 0, i32 0
  store %struct.intel_panel* %22, %struct.intel_panel** %7, align 8
  %23 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %24 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @BLC_PWM_CPU_CTL2, align 4
  %27 = call i32 @I915_READ(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @BLM_PWM_ENABLE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %2
  %33 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @BLM_PWM_ENABLE, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @BLC_PWM_CPU_CTL2, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @I915_WRITE(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %2
  %42 = load i32, i32* @BLC_PWM_PCH_CTL1, align 4
  %43 = call i32 @I915_READ(i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @BLM_PCH_PWM_ENABLE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @BLM_PCH_PWM_ENABLE, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* @BLC_PWM_PCH_CTL1, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @I915_WRITE(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %48, %41
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @TRANSCODER_EDP, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @BLM_TRANSCODER_EDP, align 4
  store i32 %62, i32* %9, align 4
  br label %66

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @BLM_PIPE(i32 %64)
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %63, %61
  %67 = load i32, i32* @BLC_PWM_CPU_CTL2, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @I915_WRITE(i32 %67, i32 %68)
  %70 = load i32, i32* @BLC_PWM_CPU_CTL2, align 4
  %71 = call i32 @POSTING_READ(i32 %70)
  %72 = load i32, i32* @BLC_PWM_CPU_CTL2, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @BLM_PWM_ENABLE, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @I915_WRITE(i32 %72, i32 %75)
  %77 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %78 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %79 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @intel_panel_actually_set_backlight(%struct.drm_connector_state* %77, i32 %81)
  %83 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %84 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = shl i32 %86, 16
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* @BLC_PWM_PCH_CTL2, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @I915_WRITE(i32 %88, i32 %89)
  store i32 0, i32* %10, align 4
  %91 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %92 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %66
  %97 = load i32, i32* @BLM_PCH_POLARITY, align 4
  %98 = load i32, i32* %10, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %96, %66
  %101 = load i32, i32* @BLC_PWM_PCH_CTL1, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @I915_WRITE(i32 %101, i32 %102)
  %104 = load i32, i32* @BLC_PWM_PCH_CTL1, align 4
  %105 = call i32 @POSTING_READ(i32 %104)
  %106 = load i32, i32* @BLC_PWM_PCH_CTL1, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @BLM_PCH_PWM_ENABLE, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @I915_WRITE(i32 %106, i32 %109)
  ret void
}

declare dso_local %struct.intel_connector* @to_intel_connector(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

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
