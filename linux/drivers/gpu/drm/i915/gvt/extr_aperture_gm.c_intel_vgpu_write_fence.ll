; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_aperture_gm.c_intel_vgpu_write_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_aperture_gm.c_intel_vgpu_write_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_2__, %struct.intel_gvt* }
%struct.TYPE_2__ = type { %struct.i915_fence_reg** }
%struct.i915_fence_reg = type { i32 }
%struct.intel_gvt = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_vgpu_write_fence(%struct.intel_vgpu* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_gvt*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.i915_fence_reg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %13 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %12, i32 0, i32 1
  %14 = load %struct.intel_gvt*, %struct.intel_gvt** %13, align 8
  store %struct.intel_gvt* %14, %struct.intel_gvt** %7, align 8
  %15 = load %struct.intel_gvt*, %struct.intel_gvt** %7, align 8
  %16 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %15, i32 0, i32 0
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %16, align 8
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %8, align 8
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  %20 = call i32 @assert_rpm_wakelock_held(i32* %19)
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %23 = call i64 @vgpu_fence_sz(%struct.intel_vgpu* %22)
  %24 = icmp uge i64 %21, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %67

29:                                               ; preds = %3
  %30 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %31 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.i915_fence_reg**, %struct.i915_fence_reg*** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.i915_fence_reg*, %struct.i915_fence_reg** %33, i64 %34
  %36 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %35, align 8
  store %struct.i915_fence_reg* %36, %struct.i915_fence_reg** %9, align 8
  %37 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %9, align 8
  %38 = icmp ne %struct.i915_fence_reg* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %67

44:                                               ; preds = %29
  %45 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %9, align 8
  %46 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @FENCE_REG_GEN6_LO(i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.i915_fence_reg*, %struct.i915_fence_reg** %9, align 8
  %50 = getelementptr inbounds %struct.i915_fence_reg, %struct.i915_fence_reg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @FENCE_REG_GEN6_HI(i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @I915_WRITE(i32 %53, i32 0)
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @POSTING_READ(i32 %55)
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @upper_32_bits(i32 %58)
  %60 = call i32 @I915_WRITE(i32 %57, i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @lower_32_bits(i32 %62)
  %64 = call i32 @I915_WRITE(i32 %61, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @POSTING_READ(i32 %65)
  br label %67

67:                                               ; preds = %44, %43, %28
  ret void
}

declare dso_local i32 @assert_rpm_wakelock_held(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @vgpu_fence_sz(%struct.intel_vgpu*) #1

declare dso_local i32 @FENCE_REG_GEN6_LO(i32) #1

declare dso_local i32 @FENCE_REG_GEN6_HI(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
