; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc.c___uc_capture_load_err_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc.c___uc_capture_load_err_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uc = type { i64, %struct.intel_guc }
%struct.intel_guc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uc*)* @__uc_capture_load_err_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__uc_capture_load_err_log(%struct.intel_uc* %0) #0 {
  %2 = alloca %struct.intel_uc*, align 8
  %3 = alloca %struct.intel_guc*, align 8
  store %struct.intel_uc* %0, %struct.intel_uc** %2, align 8
  %4 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %5 = getelementptr inbounds %struct.intel_uc, %struct.intel_uc* %4, i32 0, i32 1
  store %struct.intel_guc* %5, %struct.intel_guc** %3, align 8
  %6 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %7 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %13 = getelementptr inbounds %struct.intel_uc, %struct.intel_uc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %18 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @i915_gem_object_get(i32 %22)
  %24 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %25 = getelementptr inbounds %struct.intel_uc, %struct.intel_uc* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %16, %11, %1
  ret void
}

declare dso_local i64 @i915_gem_object_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
