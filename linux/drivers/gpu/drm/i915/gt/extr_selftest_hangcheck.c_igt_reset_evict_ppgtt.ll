; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_hangcheck.c_igt_reset_evict_ppgtt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_hangcheck.c_igt_reset_evict_ppgtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.i915_gem_context = type { i64 }
%struct.drm_file = type { i64 }

@evict_vma = common dso_local global i32 0, align 4
@EXEC_OBJECT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_reset_evict_ppgtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_reset_evict_ppgtt(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.intel_gt*, align 8
  %5 = alloca %struct.i915_gem_context*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.intel_gt*
  store %struct.intel_gt* %9, %struct.intel_gt** %4, align 8
  %10 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %11 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = call %struct.i915_gem_context* @mock_file(%struct.TYPE_6__* %12)
  %14 = bitcast %struct.i915_gem_context* %13 to %struct.drm_file*
  store %struct.drm_file* %14, %struct.drm_file** %6, align 8
  %15 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %16 = bitcast %struct.drm_file* %15 to %struct.i915_gem_context*
  %17 = call i64 @IS_ERR(%struct.i915_gem_context* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %21 = bitcast %struct.drm_file* %20 to %struct.i915_gem_context*
  %22 = call i32 @PTR_ERR(%struct.i915_gem_context* %21)
  store i32 %22, i32* %2, align 4
  br label %70

23:                                               ; preds = %1
  %24 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %25 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %31 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %34 = bitcast %struct.drm_file* %33 to %struct.i915_gem_context*
  %35 = call %struct.i915_gem_context* @live_context(%struct.TYPE_6__* %32, %struct.i915_gem_context* %34)
  store %struct.i915_gem_context* %35, %struct.i915_gem_context** %5, align 8
  %36 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %37 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %43 = call i64 @IS_ERR(%struct.i915_gem_context* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %23
  %46 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %47 = call i32 @PTR_ERR(%struct.i915_gem_context* %46)
  store i32 %47, i32* %7, align 4
  br label %62

48:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  %49 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %50 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %55 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %56 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @evict_vma, align 4
  %59 = load i32, i32* @EXEC_OBJECT_WRITE, align 4
  %60 = call i32 @__igt_reset_evict_vma(%struct.intel_gt* %54, i64 %57, i32 %58, i32 %59)
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %53, %48
  br label %62

62:                                               ; preds = %61, %45
  %63 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %64 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %67 = bitcast %struct.drm_file* %66 to %struct.i915_gem_context*
  %68 = call i32 @mock_file_free(%struct.TYPE_6__* %65, %struct.i915_gem_context* %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %62, %19
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.i915_gem_context* @mock_file(%struct.TYPE_6__*) #1

declare dso_local i64 @IS_ERR(%struct.i915_gem_context*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_gem_context*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.i915_gem_context* @live_context(%struct.TYPE_6__*, %struct.i915_gem_context*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__igt_reset_evict_vma(%struct.intel_gt*, i64, i32, i32) #1

declare dso_local i32 @mock_file_free(%struct.TYPE_6__*, %struct.i915_gem_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
