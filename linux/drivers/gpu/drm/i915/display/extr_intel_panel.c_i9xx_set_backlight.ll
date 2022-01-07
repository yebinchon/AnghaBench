; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_i9xx_set_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_i9xx_set_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector_state = type { i32 }
%struct.intel_connector = type { %struct.intel_panel, %struct.TYPE_4__ }
%struct.intel_panel = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@LBPC = common dso_local global i32 0, align 4
@BACKLIGHT_DUTY_CYCLE_MASK = common dso_local global i32 0, align 4
@BACKLIGHT_DUTY_CYCLE_MASK_PNV = common dso_local global i32 0, align 4
@BLC_PWM_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector_state*, i32)* @i9xx_set_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i9xx_set_backlight(%struct.drm_connector_state* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_connector_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_connector*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_panel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_connector_state* %0, %struct.drm_connector_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.drm_connector_state*, %struct.drm_connector_state** %3, align 8
  %12 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.intel_connector* @to_intel_connector(i32 %13)
  store %struct.intel_connector* %14, %struct.intel_connector** %5, align 8
  %15 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %16 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.drm_i915_private* @to_i915(i32 %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %6, align 8
  %20 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %21 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %20, i32 0, i32 0
  store %struct.intel_panel* %21, %struct.intel_panel** %7, align 8
  %22 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %23 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %30 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  %36 = mul nsw i32 %35, 254
  %37 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %38 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %36, %40
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %4, align 4
  %45 = sdiv i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @LBPC, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @pci_write_config_byte(i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %34, %2
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %55 = call i64 @IS_GEN(%struct.drm_i915_private* %54, i32 4)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @BACKLIGHT_DUTY_CYCLE_MASK, align 4
  store i32 %58, i32* %9, align 4
  br label %63

59:                                               ; preds = %53
  %60 = load i32, i32* %4, align 4
  %61 = shl i32 %60, 1
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* @BACKLIGHT_DUTY_CYCLE_MASK_PNV, align 4
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %59, %57
  %64 = load i32, i32* @BLC_PWM_CTL, align 4
  %65 = call i32 @I915_READ(i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* @BLC_PWM_CTL, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @I915_WRITE(i32 %69, i32 %72)
  ret void
}

declare dso_local %struct.intel_connector* @to_intel_connector(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
