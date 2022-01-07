; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_set_rps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_set_rps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.intel_rps }
%struct.intel_rps = type { i64, i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_set_rps(%struct.drm_i915_private* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.intel_rps*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.intel_rps* %10, %struct.intel_rps** %6, align 8
  %11 = load %struct.intel_rps*, %struct.intel_rps** %6, align 8
  %12 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %11, i32 0, i32 4
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.intel_rps*, %struct.intel_rps** %6, align 8
  %16 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @GEM_BUG_ON(i32 %19)
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.intel_rps*, %struct.intel_rps** %6, align 8
  %23 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @GEM_BUG_ON(i32 %26)
  %28 = load %struct.intel_rps*, %struct.intel_rps** %6, align 8
  %29 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %2
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.intel_rps*, %struct.intel_rps** %6, align 8
  %35 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  store i32 0, i32* %3, align 4
  br label %54

36:                                               ; preds = %2
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %38 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %42 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40, %36
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @valleyview_set_rps(%struct.drm_i915_private* %45, i64 %46)
  store i32 %47, i32* %7, align 4
  br label %52

48:                                               ; preds = %40
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @gen6_set_rps(%struct.drm_i915_private* %49, i64 %50)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %32
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @valleyview_set_rps(%struct.drm_i915_private*, i64) #1

declare dso_local i32 @gen6_set_rps(%struct.drm_i915_private*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
