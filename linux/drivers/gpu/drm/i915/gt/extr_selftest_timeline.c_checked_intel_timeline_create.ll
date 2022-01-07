; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_timeline.c_checked_intel_timeline_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_timeline.c_checked_intel_timeline_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_timeline = type { i64*, i64 }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [67 x i8] c"Timeline created with incorrect breadcrumb, found %x, expected %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_timeline* (%struct.drm_i915_private*)* @checked_intel_timeline_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_timeline* @checked_intel_timeline_create(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.intel_timeline*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_timeline*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 0
  %7 = call %struct.intel_timeline* @intel_timeline_create(i32* %6, i32* null)
  store %struct.intel_timeline* %7, %struct.intel_timeline** %4, align 8
  %8 = load %struct.intel_timeline*, %struct.intel_timeline** %4, align 8
  %9 = call i64 @IS_ERR(%struct.intel_timeline* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load %struct.intel_timeline*, %struct.intel_timeline** %4, align 8
  store %struct.intel_timeline* %12, %struct.intel_timeline** %2, align 8
  br label %38

13:                                               ; preds = %1
  %14 = load %struct.intel_timeline*, %struct.intel_timeline** %4, align 8
  %15 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.intel_timeline*, %struct.intel_timeline** %4, align 8
  %19 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %13
  %23 = load %struct.intel_timeline*, %struct.intel_timeline** %4, align 8
  %24 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.intel_timeline*, %struct.intel_timeline** %4, align 8
  %28 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %29)
  %31 = load %struct.intel_timeline*, %struct.intel_timeline** %4, align 8
  %32 = call i32 @intel_timeline_put(%struct.intel_timeline* %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.intel_timeline* @ERR_PTR(i32 %34)
  store %struct.intel_timeline* %35, %struct.intel_timeline** %2, align 8
  br label %38

36:                                               ; preds = %13
  %37 = load %struct.intel_timeline*, %struct.intel_timeline** %4, align 8
  store %struct.intel_timeline* %37, %struct.intel_timeline** %2, align 8
  br label %38

38:                                               ; preds = %36, %22, %11
  %39 = load %struct.intel_timeline*, %struct.intel_timeline** %2, align 8
  ret %struct.intel_timeline* %39
}

declare dso_local %struct.intel_timeline* @intel_timeline_create(i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.intel_timeline*) #1

declare dso_local i32 @pr_err(i8*, i64, i64) #1

declare dso_local i32 @intel_timeline_put(%struct.intel_timeline*) #1

declare dso_local %struct.intel_timeline* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
