; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_ggtt_reserve_guc_top.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_ggtt_reserve_guc_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_ggtt = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@GUC_GGTT_TOP = common dso_local global i64 0, align 8
@I915_COLOR_UNEVICTABLE = common dso_local global i32 0, align 4
@PIN_NOEVICT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to reserve top of GGTT for GuC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_ggtt*)* @ggtt_reserve_guc_top to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ggtt_reserve_guc_top(%struct.i915_ggtt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_ggtt*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.i915_ggtt* %0, %struct.i915_ggtt** %3, align 8
  %6 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %7 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @USES_GUC(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

13:                                               ; preds = %1
  %14 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %15 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @GUC_GGTT_TOP, align 8
  %19 = icmp sle i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @GEM_BUG_ON(i32 %20)
  %22 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %23 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @GUC_GGTT_TOP, align 8
  %27 = sub nsw i64 %25, %26
  store i64 %27, i64* %4, align 8
  %28 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %29 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %28, i32 0, i32 1
  %30 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %31 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %30, i32 0, i32 0
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @GUC_GGTT_TOP, align 8
  %34 = load i32, i32* @I915_COLOR_UNEVICTABLE, align 4
  %35 = load i32, i32* @PIN_NOEVICT, align 4
  %36 = call i32 @i915_gem_gtt_reserve(%struct.TYPE_2__* %29, i32* %31, i64 %32, i64 %33, i32 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %13
  %40 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %13
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @USES_GUC(i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_gem_gtt_reserve(%struct.TYPE_2__*, i32*, i64, i64, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
