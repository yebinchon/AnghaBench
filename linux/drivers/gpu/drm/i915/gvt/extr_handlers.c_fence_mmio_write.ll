; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_fence_mmio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_fence_mmio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, i32, i8*, i32)* @fence_mmio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fence_mmio_write(%struct.intel_vgpu* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_i915_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %14 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %16, align 8
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @offset_to_fence_num(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @sanitize_fence_mmio_access(%struct.intel_vgpu* %20, i32 %21, i8* %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %5, align 4
  br label %46

29:                                               ; preds = %4
  %30 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @write_vreg(%struct.intel_vgpu* %30, i32 %31, i8* %32, i32 %33)
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %36 = call i32 @mmio_hw_access_pre(%struct.drm_i915_private* %35)
  %37 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @fence_num_to_offset(i32 %40)
  %42 = call i32 @vgpu_vreg64(%struct.intel_vgpu* %39, i32 %41)
  %43 = call i32 @intel_vgpu_write_fence(%struct.intel_vgpu* %37, i32 %38, i32 %42)
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %45 = call i32 @mmio_hw_access_post(%struct.drm_i915_private* %44)
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %29, %27
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @offset_to_fence_num(i32) #1

declare dso_local i32 @sanitize_fence_mmio_access(%struct.intel_vgpu*, i32, i8*, i32) #1

declare dso_local i32 @write_vreg(%struct.intel_vgpu*, i32, i8*, i32) #1

declare dso_local i32 @mmio_hw_access_pre(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_vgpu_write_fence(%struct.intel_vgpu*, i32, i32) #1

declare dso_local i32 @vgpu_vreg64(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @fence_num_to_offset(i32) #1

declare dso_local i32 @mmio_hw_access_post(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
