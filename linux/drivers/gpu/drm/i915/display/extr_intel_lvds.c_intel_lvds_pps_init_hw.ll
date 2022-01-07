; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lvds.c_intel_lvds_pps_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lvds.c_intel_lvds_pps_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_lvds_pps = type { i32, i64, i64, i64, i64, i64, i64, i64 }

@PANEL_UNLOCK_MASK = common dso_local global i32 0, align 4
@PANEL_UNLOCK_REGS = common dso_local global i32 0, align 4
@PANEL_POWER_RESET = common dso_local global i32 0, align 4
@PANEL_PORT_SELECT_MASK = common dso_local global i32 0, align 4
@PANEL_POWER_UP_DELAY_MASK = common dso_local global i32 0, align 4
@PANEL_LIGHT_ON_DELAY_MASK = common dso_local global i32 0, align 4
@PANEL_POWER_DOWN_DELAY_MASK = common dso_local global i32 0, align 4
@PANEL_LIGHT_OFF_DELAY_MASK = common dso_local global i32 0, align 4
@PP_REFERENCE_DIVIDER_MASK = common dso_local global i32 0, align 4
@PANEL_POWER_CYCLE_DELAY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_lvds_pps*)* @intel_lvds_pps_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_lvds_pps_init_hw(%struct.drm_i915_private* %0, %struct.intel_lvds_pps* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_lvds_pps*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.intel_lvds_pps* %1, %struct.intel_lvds_pps** %4, align 8
  %6 = call i32 @PP_CONTROL(i32 0)
  %7 = call i32 @I915_READ(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @PANEL_UNLOCK_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @PANEL_UNLOCK_REGS, align 4
  %12 = icmp ne i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %16 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @PANEL_POWER_RESET, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %19, %2
  %24 = call i32 @PP_CONTROL(i32 0)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @I915_WRITE(i32 %24, i32 %25)
  %27 = call i32 @PP_ON_DELAYS(i32 0)
  %28 = load i32, i32* @PANEL_PORT_SELECT_MASK, align 4
  %29 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %30 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @REG_FIELD_PREP(i32 %28, i64 %31)
  %33 = load i32, i32* @PANEL_POWER_UP_DELAY_MASK, align 4
  %34 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %35 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @REG_FIELD_PREP(i32 %33, i64 %36)
  %38 = or i32 %32, %37
  %39 = load i32, i32* @PANEL_LIGHT_ON_DELAY_MASK, align 4
  %40 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %41 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @REG_FIELD_PREP(i32 %39, i64 %42)
  %44 = or i32 %38, %43
  %45 = call i32 @I915_WRITE(i32 %27, i32 %44)
  %46 = call i32 @PP_OFF_DELAYS(i32 0)
  %47 = load i32, i32* @PANEL_POWER_DOWN_DELAY_MASK, align 4
  %48 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %49 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @REG_FIELD_PREP(i32 %47, i64 %50)
  %52 = load i32, i32* @PANEL_LIGHT_OFF_DELAY_MASK, align 4
  %53 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %54 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @REG_FIELD_PREP(i32 %52, i64 %55)
  %57 = or i32 %51, %56
  %58 = call i32 @I915_WRITE(i32 %46, i32 %57)
  %59 = call i32 @PP_DIVISOR(i32 0)
  %60 = load i32, i32* @PP_REFERENCE_DIVIDER_MASK, align 4
  %61 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %62 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @REG_FIELD_PREP(i32 %60, i64 %63)
  %65 = load i32, i32* @PANEL_POWER_CYCLE_DELAY_MASK, align 4
  %66 = load %struct.intel_lvds_pps*, %struct.intel_lvds_pps** %4, align 8
  %67 = getelementptr inbounds %struct.intel_lvds_pps, %struct.intel_lvds_pps* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @DIV_ROUND_UP(i32 %68, i32 1000)
  %70 = add nsw i64 %69, 1
  %71 = call i32 @REG_FIELD_PREP(i32 %65, i64 %70)
  %72 = or i32 %64, %71
  %73 = call i32 @I915_WRITE(i32 %59, i32 %72)
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PP_CONTROL(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @PP_ON_DELAYS(i32) #1

declare dso_local i32 @REG_FIELD_PREP(i32, i64) #1

declare dso_local i32 @PP_OFF_DELAYS(i32) #1

declare dso_local i32 @PP_DIVISOR(i32) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
