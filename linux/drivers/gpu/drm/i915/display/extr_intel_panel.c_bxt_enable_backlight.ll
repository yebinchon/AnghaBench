; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_bxt_enable_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_bxt_enable_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.intel_connector = type { %struct.intel_panel, %struct.TYPE_5__ }
%struct.intel_panel = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i64, i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_8__ = type { i32 }

@UTIL_PIN_CTL = common dso_local global i32 0, align 4
@UTIL_PIN_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"util pin already enabled\0A\00", align 1
@UTIL_PIN_POLARITY = common dso_local global i32 0, align 4
@UTIL_PIN_MODE_PWM = common dso_local global i32 0, align 4
@BXT_BLC_PWM_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"backlight already enabled\0A\00", align 1
@BXT_BLC_PWM_POLARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, %struct.drm_connector_state*)* @bxt_enable_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxt_enable_backlight(%struct.intel_crtc_state* %0, %struct.drm_connector_state* %1) #0 {
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
  %29 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %30 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %71

34:                                               ; preds = %2
  %35 = load i32, i32* @UTIL_PIN_CTL, align 4
  %36 = call i32 @I915_READ(i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @UTIL_PIN_ENABLE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @UTIL_PIN_ENABLE, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @UTIL_PIN_CTL, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @I915_WRITE(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %41, %34
  store i32 0, i32* %10, align 4
  %51 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %52 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* @UTIL_PIN_POLARITY, align 4
  %58 = load i32, i32* %10, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %56, %50
  %61 = load i32, i32* @UTIL_PIN_CTL, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @UTIL_PIN_PIPE(i32 %63)
  %65 = or i32 %62, %64
  %66 = load i32, i32* @UTIL_PIN_MODE_PWM, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @UTIL_PIN_ENABLE, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @I915_WRITE(i32 %61, i32 %69)
  br label %71

71:                                               ; preds = %60, %2
  %72 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %73 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @BXT_BLC_PWM_CTL(i32 %75)
  %77 = call i32 @I915_READ(i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @BXT_BLC_PWM_ENABLE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %71
  %83 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @BXT_BLC_PWM_ENABLE, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %9, align 4
  %88 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %89 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @BXT_BLC_PWM_CTL(i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @I915_WRITE(i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %82, %71
  %96 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %97 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @BXT_BLC_PWM_FREQ(i32 %99)
  %101 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %102 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @I915_WRITE(i32 %100, i32 %104)
  %106 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %107 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %108 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @intel_panel_actually_set_backlight(%struct.drm_connector_state* %106, i32 %110)
  store i32 0, i32* %9, align 4
  %112 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %113 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %95
  %118 = load i32, i32* @BXT_BLC_PWM_POLARITY, align 4
  %119 = load i32, i32* %9, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %117, %95
  %122 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %123 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @BXT_BLC_PWM_CTL(i32 %125)
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @I915_WRITE(i32 %126, i32 %127)
  %129 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %130 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @BXT_BLC_PWM_CTL(i32 %132)
  %134 = call i32 @POSTING_READ(i32 %133)
  %135 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %136 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @BXT_BLC_PWM_CTL(i32 %138)
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @BXT_BLC_PWM_ENABLE, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @I915_WRITE(i32 %139, i32 %142)
  ret void
}

declare dso_local %struct.intel_connector* @to_intel_connector(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.TYPE_8__* @to_intel_crtc(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @UTIL_PIN_PIPE(i32) #1

declare dso_local i32 @BXT_BLC_PWM_CTL(i32) #1

declare dso_local i32 @BXT_BLC_PWM_FREQ(i32) #1

declare dso_local i32 @intel_panel_actually_set_backlight(%struct.drm_connector_state*, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
