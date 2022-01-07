; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_capture_find_epoch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_capture_find_epoch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gpu_state = type { i64, %struct.drm_i915_error_engine* }
%struct.drm_i915_error_engine = type { i64, %struct.drm_i915_error_engine* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i915_gpu_state*)* @capture_find_epoch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @capture_find_epoch(%struct.i915_gpu_state* %0) #0 {
  %2 = alloca %struct.i915_gpu_state*, align 8
  %3 = alloca %struct.drm_i915_error_engine*, align 8
  %4 = alloca i64, align 8
  store %struct.i915_gpu_state* %0, %struct.i915_gpu_state** %2, align 8
  %5 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %6 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %4, align 8
  %8 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %9 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %8, i32 0, i32 1
  %10 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %9, align 8
  store %struct.drm_i915_error_engine* %10, %struct.drm_i915_error_engine** %3, align 8
  br label %11

11:                                               ; preds = %31, %1
  %12 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %3, align 8
  %13 = icmp ne %struct.drm_i915_error_engine* %12, null
  br i1 %13, label %14, label %35

14:                                               ; preds = %11
  %15 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %3, align 8
  %16 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %3, align 8
  %21 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @time_before(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %3, align 8
  %28 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %26, %19, %14
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %3, align 8
  %33 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %32, i32 0, i32 1
  %34 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %33, align 8
  store %struct.drm_i915_error_engine* %34, %struct.drm_i915_error_engine** %3, align 8
  br label %11

35:                                               ; preds = %11
  %36 = load i64, i64* %4, align 8
  ret i64 %36
}

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
