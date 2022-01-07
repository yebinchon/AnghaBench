; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_capture_uc_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_capture_uc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gpu_state = type { %struct.TYPE_9__, %struct.i915_error_uc, %struct.drm_i915_private* }
%struct.TYPE_9__ = type { i32 }
%struct.i915_error_uc = type { i32, %struct.TYPE_13__, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8* }
%struct.drm_i915_private = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.intel_uc }
%struct.intel_uc = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_14__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_14__ }
%struct.compress = type { i32 }

@ALLOW_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_gpu_state*, %struct.compress*)* @capture_uc_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @capture_uc_state(%struct.i915_gpu_state* %0, %struct.compress* %1) #0 {
  %3 = alloca %struct.i915_gpu_state*, align 8
  %4 = alloca %struct.compress*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.i915_error_uc*, align 8
  %7 = alloca %struct.intel_uc*, align 8
  store %struct.i915_gpu_state* %0, %struct.i915_gpu_state** %3, align 8
  store %struct.compress* %1, %struct.compress** %4, align 8
  %8 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %3, align 8
  %9 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %8, i32 0, i32 2
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %5, align 8
  %11 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %3, align 8
  %12 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %11, i32 0, i32 1
  store %struct.i915_error_uc* %12, %struct.i915_error_uc** %6, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store %struct.intel_uc* %15, %struct.intel_uc** %7, align 8
  %16 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %3, align 8
  %17 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %65

22:                                               ; preds = %2
  %23 = load %struct.i915_error_uc*, %struct.i915_error_uc** %6, align 8
  %24 = getelementptr inbounds %struct.i915_error_uc, %struct.i915_error_uc* %23, i32 0, i32 2
  %25 = load %struct.intel_uc*, %struct.intel_uc** %7, align 8
  %26 = getelementptr inbounds %struct.intel_uc, %struct.intel_uc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = call i32 @memcpy(%struct.TYPE_13__* %24, %struct.TYPE_14__* %27, i32 4)
  %29 = load %struct.i915_error_uc*, %struct.i915_error_uc** %6, align 8
  %30 = getelementptr inbounds %struct.i915_error_uc, %struct.i915_error_uc* %29, i32 0, i32 1
  %31 = load %struct.intel_uc*, %struct.intel_uc** %7, align 8
  %32 = getelementptr inbounds %struct.intel_uc, %struct.intel_uc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = call i32 @memcpy(%struct.TYPE_13__* %30, %struct.TYPE_14__* %33, i32 4)
  %35 = load %struct.intel_uc*, %struct.intel_uc** %7, align 8
  %36 = getelementptr inbounds %struct.intel_uc, %struct.intel_uc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ALLOW_FAIL, align 4
  %41 = call i8* @kstrdup(i32 %39, i32 %40)
  %42 = load %struct.i915_error_uc*, %struct.i915_error_uc** %6, align 8
  %43 = getelementptr inbounds %struct.i915_error_uc, %struct.i915_error_uc* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  store i8* %41, i8** %44, align 8
  %45 = load %struct.intel_uc*, %struct.intel_uc** %7, align 8
  %46 = getelementptr inbounds %struct.intel_uc, %struct.intel_uc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ALLOW_FAIL, align 4
  %51 = call i8* @kstrdup(i32 %49, i32 %50)
  %52 = load %struct.i915_error_uc*, %struct.i915_error_uc** %6, align 8
  %53 = getelementptr inbounds %struct.i915_error_uc, %struct.i915_error_uc* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %56 = load %struct.intel_uc*, %struct.intel_uc** %7, align 8
  %57 = getelementptr inbounds %struct.intel_uc, %struct.intel_uc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.compress*, %struct.compress** %4, align 8
  %62 = call i32 @i915_error_object_create(%struct.drm_i915_private* %55, i32 %60, %struct.compress* %61)
  %63 = load %struct.i915_error_uc*, %struct.i915_error_uc** %6, align 8
  %64 = getelementptr inbounds %struct.i915_error_uc, %struct.i915_error_uc* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_13__*, %struct.TYPE_14__*, i32) #1

declare dso_local i8* @kstrdup(i32, i32) #1

declare dso_local i32 @i915_error_object_create(%struct.drm_i915_private*, i32, %struct.compress*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
