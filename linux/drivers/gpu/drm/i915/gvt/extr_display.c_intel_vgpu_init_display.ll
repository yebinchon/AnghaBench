; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_display.c_intel_vgpu_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_display.c_intel_vgpu_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@PORT_D = common dso_local global i32 0, align 4
@GVT_DP_D = common dso_local global i32 0, align 4
@PORT_B = common dso_local global i32 0, align 4
@GVT_DP_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_vgpu_init_display(%struct.intel_vgpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %8 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %6, align 8
  %12 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %13 = call i32 @intel_vgpu_init_i2c_edid(%struct.intel_vgpu* %12)
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %15 = call i64 @IS_SKYLAKE(%struct.drm_i915_private* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %19 = call i64 @IS_KABYLAKE(%struct.drm_i915_private* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %23 = call i64 @IS_COFFEELAKE(%struct.drm_i915_private* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21, %17, %2
  %26 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %27 = load i32, i32* @PORT_D, align 4
  %28 = load i32, i32* @GVT_DP_D, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @setup_virtual_dp_monitor(%struct.intel_vgpu* %26, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %37

31:                                               ; preds = %21
  %32 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %33 = load i32, i32* @PORT_B, align 4
  %34 = load i32, i32* @GVT_DP_B, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @setup_virtual_dp_monitor(%struct.intel_vgpu* %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %25
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @intel_vgpu_init_i2c_edid(%struct.intel_vgpu*) #1

declare dso_local i64 @IS_SKYLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_KABYLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_COFFEELAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @setup_virtual_dp_monitor(%struct.intel_vgpu*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
