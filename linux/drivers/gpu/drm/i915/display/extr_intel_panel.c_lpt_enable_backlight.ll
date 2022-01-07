; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_lpt_enable_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_lpt_enable_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.intel_connector = type { %struct.intel_panel, %struct.TYPE_3__ }
%struct.intel_panel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@BLC_PWM_PCH_CTL1 = common dso_local global i32 0, align 4
@BLM_PCH_PWM_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"pch backlight already enabled\0A\00", align 1
@SOUTH_CHICKEN2 = common dso_local global i32 0, align 4
@LPT_PWM_GRANULARITY = common dso_local global i32 0, align 4
@SOUTH_CHICKEN1 = common dso_local global i32 0, align 4
@SPT_PWM_GRANULARITY = common dso_local global i32 0, align 4
@BLC_PWM_PCH_CTL2 = common dso_local global i32 0, align 4
@BLM_PCH_POLARITY = common dso_local global i32 0, align 4
@BLM_PCH_OVERRIDE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, %struct.drm_connector_state*)* @lpt_enable_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpt_enable_backlight(%struct.intel_crtc_state* %0, %struct.drm_connector_state* %1) #0 {
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
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.drm_i915_private* @to_i915(i32 %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %6, align 8
  %20 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %21 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %20, i32 0, i32 0
  store %struct.intel_panel* %21, %struct.intel_panel** %7, align 8
  %22 = load i32, i32* @BLC_PWM_PCH_CTL1, align 4
  %23 = call i32 @I915_READ(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @BLM_PCH_PWM_ENABLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %2
  %29 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @BLM_PCH_PWM_ENABLE, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @BLC_PWM_PCH_CTL1, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @I915_WRITE(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %28, %2
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %39 = call i64 @HAS_PCH_LPT(%struct.drm_i915_private* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %37
  %42 = load i32, i32* @SOUTH_CHICKEN2, align 4
  %43 = call i32 @I915_READ(i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %45 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i32, i32* @LPT_PWM_GRANULARITY, align 4
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  br label %58

53:                                               ; preds = %41
  %54 = load i32, i32* @LPT_PWM_GRANULARITY, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %53, %49
  %59 = load i32, i32* @SOUTH_CHICKEN2, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @I915_WRITE(i32 %59, i32 %60)
  br label %83

62:                                               ; preds = %37
  %63 = load i32, i32* @SOUTH_CHICKEN1, align 4
  %64 = call i32 @I915_READ(i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %66 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load i32, i32* @SPT_PWM_GRANULARITY, align 4
  %72 = load i32, i32* %10, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %10, align 4
  br label %79

74:                                               ; preds = %62
  %75 = load i32, i32* @SPT_PWM_GRANULARITY, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %10, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %74, %70
  %80 = load i32, i32* @SOUTH_CHICKEN1, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @I915_WRITE(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %58
  %84 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %85 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = shl i32 %87, 16
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* @BLC_PWM_PCH_CTL2, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @I915_WRITE(i32 %89, i32 %90)
  store i32 0, i32* %8, align 4
  %92 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %93 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %83
  %98 = load i32, i32* @BLM_PCH_POLARITY, align 4
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %97, %83
  %102 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %103 = call i64 @HAS_PCH_LPT(%struct.drm_i915_private* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32, i32* @BLM_PCH_OVERRIDE_ENABLE, align 4
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %105, %101
  %110 = load i32, i32* @BLC_PWM_PCH_CTL1, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @I915_WRITE(i32 %110, i32 %111)
  %113 = load i32, i32* @BLC_PWM_PCH_CTL1, align 4
  %114 = call i32 @POSTING_READ(i32 %113)
  %115 = load i32, i32* @BLC_PWM_PCH_CTL1, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @BLM_PCH_PWM_ENABLE, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @I915_WRITE(i32 %115, i32 %118)
  %120 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %121 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %122 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @intel_panel_actually_set_backlight(%struct.drm_connector_state* %120, i32 %124)
  ret void
}

declare dso_local %struct.intel_connector* @to_intel_connector(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i64 @HAS_PCH_LPT(%struct.drm_i915_private*) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @intel_panel_actually_set_backlight(%struct.drm_connector_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
