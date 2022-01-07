; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic.c_intel_atomic_state_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic.c_intel_atomic_state_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_atomic_state = type { i32 }
%struct.drm_device = type { i32 }
%struct.intel_atomic_state = type { %struct.drm_atomic_state }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_atomic_state* @intel_atomic_state_alloc(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_atomic_state*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.intel_atomic_state*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.intel_atomic_state* @kzalloc(i32 4, i32 %5)
  store %struct.intel_atomic_state* %6, %struct.intel_atomic_state** %4, align 8
  %7 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %8 = icmp ne %struct.intel_atomic_state* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %12 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %11, i32 0, i32 0
  %13 = call i64 @drm_atomic_state_init(%struct.drm_device* %10, %struct.drm_atomic_state* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9, %1
  %16 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %17 = call i32 @kfree(%struct.intel_atomic_state* %16)
  store %struct.drm_atomic_state* null, %struct.drm_atomic_state** %2, align 8
  br label %21

18:                                               ; preds = %9
  %19 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %20 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %19, i32 0, i32 0
  store %struct.drm_atomic_state* %20, %struct.drm_atomic_state** %2, align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  ret %struct.drm_atomic_state* %22
}

declare dso_local %struct.intel_atomic_state* @kzalloc(i32, i32) #1

declare dso_local i64 @drm_atomic_state_init(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @kfree(%struct.intel_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
