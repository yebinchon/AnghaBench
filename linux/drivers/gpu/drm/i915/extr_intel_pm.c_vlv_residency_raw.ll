; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_vlv_residency_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_vlv_residency_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VLV_COUNTER_CONTROL = common dso_local global i32 0, align 4
@VLV_COUNT_RANGE_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32)* @vlv_residency_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlv_residency_raw(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 2, i32* %8, align 4
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load i32, i32* @VLV_COUNTER_CONTROL, align 4
  %14 = load i32, i32* @VLV_COUNT_RANGE_HIGH, align 4
  %15 = call i32 @_MASKED_BIT_ENABLE(i32 %14)
  %16 = call i32 @I915_WRITE_FW(i32 %13, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @I915_READ_FW(i32 %17)
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %41, %2
  %20 = load i64, i64* %6, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i32, i32* @VLV_COUNTER_CONTROL, align 4
  %22 = load i32, i32* @VLV_COUNT_RANGE_HIGH, align 4
  %23 = call i32 @_MASKED_BIT_DISABLE(i32 %22)
  %24 = call i32 @I915_WRITE_FW(i32 %21, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @I915_READ_FW(i32 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i32, i32* @VLV_COUNTER_CONTROL, align 4
  %28 = load i32, i32* @VLV_COUNT_RANGE_HIGH, align 4
  %29 = call i32 @_MASKED_BIT_ENABLE(i32 %28)
  %30 = call i32 @I915_WRITE_FW(i32 %27, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @I915_READ_FW(i32 %31)
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %19
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i1 [ false, %33 ], [ %40, %37 ]
  br i1 %42, label %19, label %43

43:                                               ; preds = %41
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = trunc i64 %45 to i32
  %47 = shl i32 %46, 8
  %48 = sext i32 %47 to i64
  %49 = or i64 %44, %48
  %50 = trunc i64 %49 to i32
  ret i32 %50
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @I915_WRITE_FW(i32, i32) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i64 @I915_READ_FW(i32) #1

declare dso_local i32 @_MASKED_BIT_DISABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
