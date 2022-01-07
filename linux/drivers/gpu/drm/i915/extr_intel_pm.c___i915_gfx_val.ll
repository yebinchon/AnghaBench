; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c___i915_gfx_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c___i915_gfx_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@mchdev_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.drm_i915_private*)* @__i915_gfx_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__i915_gfx_val(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %10 = call i32 @lockdep_assert_held(i32* @mchdev_lock)
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @PXVFREQ(i32 %15)
  %17 = call i32 @I915_READ(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = ashr i32 %18, 24
  %20 = and i32 %19, 127
  store i32 %20, i32* %8, align 4
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @pvid_to_extvid(%struct.drm_i915_private* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %5, align 8
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %27 = call i64 @i915_mch_val(%struct.drm_i915_private* %26)
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = icmp ugt i64 %28, 80
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load i64, i64* %3, align 8
  %32 = mul i64 %31, 2349
  %33 = add i64 %32, 135940
  store i64 %33, i64* %4, align 8
  br label %46

34:                                               ; preds = %1
  %35 = load i64, i64* %3, align 8
  %36 = icmp uge i64 %35, 50
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i64, i64* %3, align 8
  %39 = mul i64 %38, 964
  %40 = add i64 %39, 29317
  store i64 %40, i64* %4, align 8
  br label %45

41:                                               ; preds = %34
  %42 = load i64, i64* %3, align 8
  %43 = mul i64 %42, 301
  %44 = add i64 %43, 1004
  store i64 %44, i64* %4, align 8
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %45, %30
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = mul i64 150142, %48
  %50 = udiv i64 %49, 10000
  %51 = sub i64 %50, 78642
  %52 = mul i64 %47, %51
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = udiv i64 %53, 100000
  store i64 %54, i64* %4, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %57 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = mul i64 %55, %59
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %5, align 8
  %63 = mul i64 %61, %62
  %64 = udiv i64 %63, 10000
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = udiv i64 %65, 100
  store i64 %66, i64* %7, align 8
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %68 = call i32 @__i915_update_gfx_val(%struct.drm_i915_private* %67)
  %69 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %70 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = add i64 %72, %73
  ret i64 %74
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PXVFREQ(i32) #1

declare dso_local i32 @pvid_to_extvid(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @i915_mch_val(%struct.drm_i915_private*) #1

declare dso_local i32 @__i915_update_gfx_val(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
