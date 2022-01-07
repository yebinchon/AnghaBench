; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_chv_set_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_chv_set_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_cdclk_state = type { i32, i32 }

@POWER_DOMAIN_DISPLAY_CORE = common dso_local global i32 0, align 4
@PUNIT_REG_DSPSSPM = common dso_local global i32 0, align 4
@DSPFREQGUAR_MASK_CHV = common dso_local global i32 0, align 4
@DSPFREQGUAR_SHIFT_CHV = common dso_local global i32 0, align 4
@DSPFREQSTAT_MASK_CHV = common dso_local global i32 0, align 4
@DSPFREQSTAT_SHIFT_CHV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"timed out waiting for CDclk change\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_cdclk_state*, i32)* @chv_set_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chv_set_cdclk(%struct.drm_i915_private* %0, %struct.intel_cdclk_state* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_cdclk_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.intel_cdclk_state* %1, %struct.intel_cdclk_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %5, align 8
  %12 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %5, align 8
  %15 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %19 [
    i32 333333, label %18
    i32 320000, label %18
    i32 266667, label %18
    i32 200000, label %18
  ]

18:                                               ; preds = %3, %3, %3, %3
  br label %22

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @MISSING_CASE(i32 %20)
  br label %69

22:                                               ; preds = %18
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %24 = load i32, i32* @POWER_DOMAIN_DISPLAY_CORE, align 4
  %25 = call i32 @intel_display_power_get(%struct.drm_i915_private* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %27 = call i32 @vlv_punit_get(%struct.drm_i915_private* %26)
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %29 = load i32, i32* @PUNIT_REG_DSPSSPM, align 4
  %30 = call i32 @vlv_punit_read(%struct.drm_i915_private* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @DSPFREQGUAR_MASK_CHV, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @DSPFREQGUAR_SHIFT_CHV, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %41 = load i32, i32* @PUNIT_REG_DSPSSPM, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @vlv_punit_write(%struct.drm_i915_private* %40, i32 %41, i32 %42)
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %45 = load i32, i32* @PUNIT_REG_DSPSSPM, align 4
  %46 = call i32 @vlv_punit_read(%struct.drm_i915_private* %44, i32 %45)
  %47 = load i32, i32* @DSPFREQSTAT_MASK_CHV, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @DSPFREQSTAT_SHIFT_CHV, align 4
  %51 = shl i32 %49, %50
  %52 = icmp eq i32 %48, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @wait_for(i32 %53, i32 50)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %22
  %57 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %22
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %60 = call i32 @vlv_punit_put(%struct.drm_i915_private* %59)
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %62 = call i32 @intel_update_cdclk(%struct.drm_i915_private* %61)
  %63 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %64 = call i32 @vlv_program_pfi_credits(%struct.drm_i915_private* %63)
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %66 = load i32, i32* @POWER_DOMAIN_DISPLAY_CORE, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @intel_display_power_put(%struct.drm_i915_private* %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %58, %19
  ret void
}

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i32 @intel_display_power_get(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @vlv_punit_get(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_punit_read(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @vlv_punit_write(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i64 @wait_for(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @vlv_punit_put(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_update_cdclk(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_program_pfi_credits(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_display_power_put(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
