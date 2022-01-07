; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_find_best_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_find_best_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_pipe_wm = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_pipe_wm* (%struct.drm_i915_private*, %struct.intel_pipe_wm*, %struct.intel_pipe_wm*)* @ilk_find_best_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_pipe_wm* @ilk_find_best_result(%struct.drm_i915_private* %0, %struct.intel_pipe_wm* %1, %struct.intel_pipe_wm* %2) #0 {
  %4 = alloca %struct.intel_pipe_wm*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_pipe_wm*, align 8
  %7 = alloca %struct.intel_pipe_wm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store %struct.intel_pipe_wm* %1, %struct.intel_pipe_wm** %6, align 8
  store %struct.intel_pipe_wm* %2, %struct.intel_pipe_wm** %7, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %13 = call i32 @ilk_wm_max_level(%struct.drm_i915_private* %12)
  store i32 %13, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %8, align 4
  br label %14

14:                                               ; preds = %43, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %14
  %19 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %6, align 8
  %20 = getelementptr inbounds %struct.intel_pipe_wm, %struct.intel_pipe_wm* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %28, %18
  %31 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %7, align 8
  %32 = getelementptr inbounds %struct.intel_pipe_wm, %struct.intel_pipe_wm* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %40, %30
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %14

46:                                               ; preds = %14
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %7, align 8
  %52 = getelementptr inbounds %struct.intel_pipe_wm, %struct.intel_pipe_wm* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %6, align 8
  %57 = getelementptr inbounds %struct.intel_pipe_wm, %struct.intel_pipe_wm* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %7, align 8
  store %struct.intel_pipe_wm* %61, %struct.intel_pipe_wm** %4, align 8
  br label %72

62:                                               ; preds = %55, %50
  %63 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %6, align 8
  store %struct.intel_pipe_wm* %63, %struct.intel_pipe_wm** %4, align 8
  br label %72

64:                                               ; preds = %46
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %6, align 8
  store %struct.intel_pipe_wm* %69, %struct.intel_pipe_wm** %4, align 8
  br label %72

70:                                               ; preds = %64
  %71 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %7, align 8
  store %struct.intel_pipe_wm* %71, %struct.intel_pipe_wm** %4, align 8
  br label %72

72:                                               ; preds = %70, %68, %62, %60
  %73 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %4, align 8
  ret %struct.intel_pipe_wm* %73
}

declare dso_local i32 @ilk_wm_max_level(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
