; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_i915_reset_error_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_i915_reset_error_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.i915_gpu_state* }
%struct.i915_gpu_state = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_reset_error_state(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.i915_gpu_state*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_irq(i32* %6)
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %10, align 8
  store %struct.i915_gpu_state* %11, %struct.i915_gpu_state** %3, align 8
  %12 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %3, align 8
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.i915_gpu_state* @ERR_PTR(i32 %14)
  %16 = icmp ne %struct.i915_gpu_state* %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store %struct.i915_gpu_state* null, %struct.i915_gpu_state** %20, align 8
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock_irq(i32* %24)
  %26 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %3, align 8
  %27 = call i32 @IS_ERR_OR_NULL(%struct.i915_gpu_state* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %3, align 8
  %31 = call i32 @i915_gpu_state_put(%struct.i915_gpu_state* %30)
  br label %32

32:                                               ; preds = %29, %21
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.i915_gpu_state* @ERR_PTR(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.i915_gpu_state*) #1

declare dso_local i32 @i915_gpu_state_put(%struct.i915_gpu_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
