; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_intel_compute_max_dotclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_intel_compute_max_dotclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @intel_compute_max_dotclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_compute_max_dotclk(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = call i32 @INTEL_GEN(%struct.drm_i915_private* %8)
  %10 = icmp sge i32 %9, 10
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11, %1
  %16 = load i32, i32* %4, align 4
  %17 = mul nsw i32 2, %16
  store i32 %17, i32* %2, align 4
  br label %53

18:                                               ; preds = %11
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = call i64 @IS_GEN(%struct.drm_i915_private* %19, i32 9)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %24 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = call i64 @IS_HASWELL(%struct.drm_i915_private* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %22, %18
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %53

32:                                               ; preds = %26
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %34 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = mul nsw i32 %37, 95
  %39 = sdiv i32 %38, 100
  store i32 %39, i32* %2, align 4
  br label %53

40:                                               ; preds = %32
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %42 = call i32 @INTEL_GEN(%struct.drm_i915_private* %41)
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = mul nsw i32 2, %45
  %47 = mul nsw i32 %46, 90
  %48 = sdiv i32 %47, 100
  store i32 %48, i32* %2, align 4
  br label %53

49:                                               ; preds = %40
  %50 = load i32, i32* %4, align 4
  %51 = mul nsw i32 %50, 90
  %52 = sdiv i32 %51, 100
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %49, %44, %36, %30, %15
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
