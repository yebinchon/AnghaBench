; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_chv_pipe_power_well_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_chv_pipe_power_well_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i915_power_well = type { i32 }

@PIPE_A = common dso_local global i32 0, align 4
@PUNIT_REG_DSPSSPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.i915_power_well*)* @chv_pipe_power_well_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chv_pipe_power_well_enabled(%struct.drm_i915_private* %0, %struct.i915_power_well* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_power_well*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.i915_power_well* %1, %struct.i915_power_well** %4, align 8
  %9 = load i32, i32* @PIPE_A, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = call i32 @vlv_punit_get(%struct.drm_i915_private* %10)
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = load i32, i32* @PUNIT_REG_DSPSSPM, align 4
  %14 = call i32 @vlv_punit_read(%struct.drm_i915_private* %12, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @DP_SSS_MASK(i32 %15)
  %17 = and i32 %14, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @DP_SSS_PWR_ON(i32 %19)
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @DP_SSS_PWR_GATE(i32 %24)
  %26 = icmp ne i32 %23, %25
  br label %27

27:                                               ; preds = %22, %2
  %28 = phi i1 [ false, %2 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @DP_SSS_PWR_ON(i32 %32)
  %34 = icmp eq i32 %31, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %37 = load i32, i32* @PUNIT_REG_DSPSSPM, align 4
  %38 = call i32 @vlv_punit_read(%struct.drm_i915_private* %36, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @DP_SSC_MASK(i32 %39)
  %41 = and i32 %38, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = shl i32 %42, 16
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ON(i32 %46)
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %49 = call i32 @vlv_punit_put(%struct.drm_i915_private* %48)
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @vlv_punit_get(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_punit_read(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @DP_SSS_MASK(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @DP_SSS_PWR_ON(i32) #1

declare dso_local i32 @DP_SSS_PWR_GATE(i32) #1

declare dso_local i32 @DP_SSC_MASK(i32) #1

declare dso_local i32 @vlv_punit_put(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
