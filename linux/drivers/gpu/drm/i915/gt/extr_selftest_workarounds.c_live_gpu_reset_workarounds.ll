; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_workarounds.c_live_gpu_reset_workarounds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_workarounds.c_live_gpu_reset_workarounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, i32 }
%struct.i915_gem_context = type { i32 }
%struct.wa_lists = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Verifying after GPU reset...\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"before reset\00", align 1
@ALL_ENGINES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"live_workarounds\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"after reset\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @live_gpu_reset_workarounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @live_gpu_reset_workarounds(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.i915_gem_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wa_lists, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.drm_i915_private*
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %4, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %12 = call i32 @intel_has_gpu_reset(%struct.drm_i915_private* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

15:                                               ; preds = %1
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %17 = call %struct.i915_gem_context* @kernel_context(%struct.drm_i915_private* %16)
  store %struct.i915_gem_context* %17, %struct.i915_gem_context** %5, align 8
  %18 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %19 = call i64 @IS_ERR(%struct.i915_gem_context* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %23 = call i32 @PTR_ERR(%struct.i915_gem_context* %22)
  store i32 %23, i32* %2, align 4
  br label %70

24:                                               ; preds = %15
  %25 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %26 = call i32 @i915_gem_context_lock_engines(%struct.i915_gem_context* %25)
  %27 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  %30 = call i32 @igt_global_reset_lock(i32* %29)
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %32 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %31, i32 0, i32 1
  %33 = call i32 @intel_runtime_pm_get(i32* %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %35 = call i32 @reference_lists_init(%struct.drm_i915_private* %34, %struct.wa_lists* %7)
  %36 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %37 = call i32 @verify_wa_lists(%struct.i915_gem_context* %36, %struct.wa_lists* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %24
  br label %48

41:                                               ; preds = %24
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %43 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %42, i32 0, i32 0
  %44 = load i32, i32* @ALL_ENGINES, align 4
  %45 = call i32 @intel_gt_reset(i32* %43, i32 %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %47 = call i32 @verify_wa_lists(%struct.i915_gem_context* %46, %struct.wa_lists* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %41, %40
  %49 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %50 = call i32 @i915_gem_context_unlock_engines(%struct.i915_gem_context* %49)
  %51 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %52 = call i32 @kernel_context_close(%struct.i915_gem_context* %51)
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %54 = call i32 @reference_lists_fini(%struct.drm_i915_private* %53, %struct.wa_lists* %7)
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %56 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %55, i32 0, i32 1
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @intel_runtime_pm_put(i32* %56, i32 %57)
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %60 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %59, i32 0, i32 0
  %61 = call i32 @igt_global_reset_unlock(i32* %60)
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %48
  br label %68

65:                                               ; preds = %48
  %66 = load i32, i32* @ESRCH, align 4
  %67 = sub nsw i32 0, %66
  br label %68

68:                                               ; preds = %65, %64
  %69 = phi i32 [ 0, %64 ], [ %67, %65 ]
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %21, %14
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @intel_has_gpu_reset(%struct.drm_i915_private*) #1

declare dso_local %struct.i915_gem_context* @kernel_context(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_ERR(%struct.i915_gem_context*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_gem_context*) #1

declare dso_local i32 @i915_gem_context_lock_engines(%struct.i915_gem_context*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @igt_global_reset_lock(i32*) #1

declare dso_local i32 @intel_runtime_pm_get(i32*) #1

declare dso_local i32 @reference_lists_init(%struct.drm_i915_private*, %struct.wa_lists*) #1

declare dso_local i32 @verify_wa_lists(%struct.i915_gem_context*, %struct.wa_lists*, i8*) #1

declare dso_local i32 @intel_gt_reset(i32*, i32, i8*) #1

declare dso_local i32 @i915_gem_context_unlock_engines(%struct.i915_gem_context*) #1

declare dso_local i32 @kernel_context_close(%struct.i915_gem_context*) #1

declare dso_local i32 @reference_lists_fini(%struct.drm_i915_private*, %struct.wa_lists*) #1

declare dso_local i32 @intel_runtime_pm_put(i32*, i32) #1

declare dso_local i32 @igt_global_reset_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
