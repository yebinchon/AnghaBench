; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_device_info.c_read_reference_ts_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_device_info.c_read_reference_ts_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@GEN9_TIMESTAMP_OVERRIDE = common dso_local global i32 0, align 4
@GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DIVIDER_MASK = common dso_local global i32 0, align 4
@GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DIVIDER_SHIFT = common dso_local global i32 0, align 4
@GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DENOMINATOR_MASK = common dso_local global i32 0, align 4
@GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DENOMINATOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @read_reference_ts_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_reference_ts_freq(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %6 = load i32, i32* @GEN9_TIMESTAMP_OVERRIDE, align 4
  %7 = call i32 @I915_READ(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DIVIDER_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DIVIDER_SHIFT, align 4
  %12 = ashr i32 %10, %11
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = mul nsw i32 %14, 1000
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DENOMINATOR_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DENOMINATOR_SHIFT, align 4
  %20 = ashr i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  %23 = sdiv i32 1000, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %24, %25
  ret i32 %26
}

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
