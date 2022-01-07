; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_is_port_edp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_is_port_edp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@PORT_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_dp_is_port_edp(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %7 = call i32 @INTEL_GEN(%struct.drm_i915_private* %6)
  %8 = icmp slt i32 %7, 5
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

10:                                               ; preds = %2
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %12 = call i32 @INTEL_GEN(%struct.drm_i915_private* %11)
  %13 = icmp slt i32 %12, 9
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @PORT_A, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %23

19:                                               ; preds = %14, %10
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @intel_bios_is_port_edp(%struct.drm_i915_private* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %18, %9
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_bios_is_port_edp(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
