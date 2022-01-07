; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_bxt_disable_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_bxt_disable_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector_state = type { i32 }
%struct.intel_connector = type { %struct.intel_panel, %struct.TYPE_4__ }
%struct.intel_panel = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@BXT_BLC_PWM_ENABLE = common dso_local global i32 0, align 4
@UTIL_PIN_CTL = common dso_local global i32 0, align 4
@UTIL_PIN_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector_state*)* @bxt_disable_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxt_disable_backlight(%struct.drm_connector_state* %0) #0 {
  %2 = alloca %struct.drm_connector_state*, align 8
  %3 = alloca %struct.intel_connector*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_panel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_connector_state* %0, %struct.drm_connector_state** %2, align 8
  %8 = load %struct.drm_connector_state*, %struct.drm_connector_state** %2, align 8
  %9 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.intel_connector* @to_intel_connector(i32 %10)
  store %struct.intel_connector* %11, %struct.intel_connector** %3, align 8
  %12 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %13 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %4, align 8
  %17 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %18 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %17, i32 0, i32 0
  store %struct.intel_panel* %18, %struct.intel_panel** %5, align 8
  %19 = load %struct.drm_connector_state*, %struct.drm_connector_state** %2, align 8
  %20 = call i32 @intel_panel_actually_set_backlight(%struct.drm_connector_state* %19, i32 0)
  %21 = load %struct.intel_panel*, %struct.intel_panel** %5, align 8
  %22 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @BXT_BLC_PWM_CTL(i32 %24)
  %26 = call i32 @I915_READ(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.intel_panel*, %struct.intel_panel** %5, align 8
  %28 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @BXT_BLC_PWM_CTL(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @BXT_BLC_PWM_ENABLE, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = call i32 @I915_WRITE(i32 %31, i32 %35)
  %37 = load %struct.intel_panel*, %struct.intel_panel** %5, align 8
  %38 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %52

42:                                               ; preds = %1
  %43 = load i32, i32* @UTIL_PIN_CTL, align 4
  %44 = call i32 @I915_READ(i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @UTIL_PIN_ENABLE, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @UTIL_PIN_CTL, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @I915_WRITE(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %42, %1
  ret void
}

declare dso_local %struct.intel_connector* @to_intel_connector(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_panel_actually_set_backlight(%struct.drm_connector_state*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @BXT_BLC_PWM_CTL(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
