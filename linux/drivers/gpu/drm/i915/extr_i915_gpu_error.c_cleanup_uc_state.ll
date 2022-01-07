; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_cleanup_uc_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_cleanup_uc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gpu_state = type { %struct.i915_error_uc }
%struct.i915_error_uc = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_gpu_state*)* @cleanup_uc_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_uc_state(%struct.i915_gpu_state* %0) #0 {
  %2 = alloca %struct.i915_gpu_state*, align 8
  %3 = alloca %struct.i915_error_uc*, align 8
  store %struct.i915_gpu_state* %0, %struct.i915_gpu_state** %2, align 8
  %4 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %5 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %4, i32 0, i32 0
  store %struct.i915_error_uc* %5, %struct.i915_error_uc** %3, align 8
  %6 = load %struct.i915_error_uc*, %struct.i915_error_uc** %3, align 8
  %7 = getelementptr inbounds %struct.i915_error_uc, %struct.i915_error_uc* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @kfree(i32 %9)
  %11 = load %struct.i915_error_uc*, %struct.i915_error_uc** %3, align 8
  %12 = getelementptr inbounds %struct.i915_error_uc, %struct.i915_error_uc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @kfree(i32 %14)
  %16 = load %struct.i915_error_uc*, %struct.i915_error_uc** %3, align 8
  %17 = getelementptr inbounds %struct.i915_error_uc, %struct.i915_error_uc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @i915_error_object_free(i32 %18)
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @i915_error_object_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
