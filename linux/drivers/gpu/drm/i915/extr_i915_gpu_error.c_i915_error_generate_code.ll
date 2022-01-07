; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_i915_error_generate_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_i915_error_generate_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gpu_state = type { %struct.drm_i915_error_engine* }
%struct.drm_i915_error_engine = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_gpu_state*)* @i915_error_generate_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_error_generate_code(%struct.i915_gpu_state* %0) #0 {
  %2 = alloca %struct.i915_gpu_state*, align 8
  %3 = alloca %struct.drm_i915_error_engine*, align 8
  store %struct.i915_gpu_state* %0, %struct.i915_gpu_state** %2, align 8
  %4 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %5 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %4, i32 0, i32 0
  %6 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  store %struct.drm_i915_error_engine* %6, %struct.drm_i915_error_engine** %3, align 8
  %7 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %3, align 8
  %8 = icmp ne %struct.drm_i915_error_engine* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %3, align 8
  %11 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %3, align 8
  %14 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = xor i32 %12, %16
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %9
  %20 = phi i32 [ %17, %9 ], [ 0, %18 ]
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
