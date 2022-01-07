; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_capture_gen_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_capture_gen_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gpu_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@intel_iommu_gfx_mapped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_gpu_state*)* @capture_gen_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @capture_gen_state(%struct.i915_gpu_state* %0) #0 {
  %2 = alloca %struct.i915_gpu_state*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.i915_gpu_state* %0, %struct.i915_gpu_state** %2, align 8
  %4 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %5 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %4, i32 0, i32 9
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %12 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %11, i32 0, i32 8
  store i32 %10, i32* %12, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = call i32 @atomic_read(i32* %15)
  %17 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %18 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 4
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %24 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 8
  %25 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %26 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %27, i32 0, i32 2
  %29 = call i32 @i915_reset_count(i32* %28)
  %30 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %31 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %33 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %36 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %38 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %37, i32 0, i32 3
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %40 = call i32 @INTEL_INFO(%struct.drm_i915_private* %39)
  %41 = call i32 @memcpy(i32* %38, i32 %40, i32 4)
  %42 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %43 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %42, i32 0, i32 2
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %45 = call i32 @RUNTIME_INFO(%struct.drm_i915_private* %44)
  %46 = call i32 @memcpy(i32* %43, i32 %45, i32 4)
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %48 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %51 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @i915_reset_count(i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @INTEL_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @RUNTIME_INFO(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
