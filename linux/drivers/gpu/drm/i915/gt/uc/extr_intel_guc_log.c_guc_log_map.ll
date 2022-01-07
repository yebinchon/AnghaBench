; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_log.c_guc_log_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_log.c_guc_log_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc_log = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@I915_MAP_WC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_guc_log*)* @guc_log_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guc_log_map(%struct.intel_guc_log* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_guc_log*, align 8
  %4 = alloca i8*, align 8
  store %struct.intel_guc_log* %0, %struct.intel_guc_log** %3, align 8
  %5 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %6 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %10 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %35

16:                                               ; preds = %1
  %17 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %18 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @I915_MAP_WC, align 4
  %23 = call i8* @i915_gem_object_pin_map(i32 %21, i32 %22)
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @IS_ERR(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @PTR_ERR(i8* %28)
  store i32 %29, i32* %2, align 4
  br label %35

30:                                               ; preds = %16
  %31 = load i8*, i8** %4, align 8
  %32 = load %struct.intel_guc_log*, %struct.intel_guc_log** %3, align 8
  %33 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i8* %31, i8** %34, align 8
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %30, %27, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i8* @i915_gem_object_pin_map(i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
