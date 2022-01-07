; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_workarounds.c_live_reset_whitelist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_workarounds.c_live_reset_whitelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, %struct.intel_engine_cs** }
%struct.intel_engine_cs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@RCS0 = common dso_local global i64 0, align 8
@do_engine_reset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@do_device_reset = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @live_reset_whitelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @live_reset_whitelist(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_engine_cs*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.drm_i915_private*
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %4, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 1
  %11 = load %struct.intel_engine_cs**, %struct.intel_engine_cs*** %10, align 8
  %12 = load i64, i64* @RCS0, align 8
  %13 = getelementptr inbounds %struct.intel_engine_cs*, %struct.intel_engine_cs** %11, i64 %12
  %14 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %13, align 8
  store %struct.intel_engine_cs* %14, %struct.intel_engine_cs** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %16 = icmp ne %struct.intel_engine_cs* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %19 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %1
  store i32 0, i32* %2, align 4
  br label %57

24:                                               ; preds = %17
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 0
  %27 = call i32 @igt_global_reset_lock(i32* %26)
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %29 = call i64 @intel_has_reset_engine(%struct.drm_i915_private* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %33 = load i32, i32* @do_engine_reset, align 4
  %34 = call i32 @check_whitelist_across_reset(%struct.intel_engine_cs* %32, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %52

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %24
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %41 = call i64 @intel_has_gpu_reset(%struct.drm_i915_private* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %45 = load i32, i32* @do_device_reset, align 4
  %46 = call i32 @check_whitelist_across_reset(%struct.intel_engine_cs* %44, i32 %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %52

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %39
  br label %52

52:                                               ; preds = %51, %49, %37
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %54 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %53, i32 0, i32 0
  %55 = call i32 @igt_global_reset_unlock(i32* %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %52, %23
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @igt_global_reset_lock(i32*) #1

declare dso_local i64 @intel_has_reset_engine(%struct.drm_i915_private*) #1

declare dso_local i32 @check_whitelist_across_reset(%struct.intel_engine_cs*, i32, i8*) #1

declare dso_local i64 @intel_has_gpu_reset(%struct.drm_i915_private*) #1

declare dso_local i32 @igt_global_reset_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
