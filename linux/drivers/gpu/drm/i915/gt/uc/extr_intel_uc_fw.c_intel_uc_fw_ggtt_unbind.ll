; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc_fw.c_intel_uc_fw_ggtt_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc_fw.c_intel_uc_fw_ggtt_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uc_fw = type { %struct.drm_i915_gem_object* }
%struct.drm_i915_gem_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_gt = type { %struct.i915_ggtt* }
%struct.i915_ggtt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uc_fw*, %struct.intel_gt*)* @intel_uc_fw_ggtt_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_uc_fw_ggtt_unbind(%struct.intel_uc_fw* %0, %struct.intel_gt* %1) #0 {
  %3 = alloca %struct.intel_uc_fw*, align 8
  %4 = alloca %struct.intel_gt*, align 8
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca %struct.i915_ggtt*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_uc_fw* %0, %struct.intel_uc_fw** %3, align 8
  store %struct.intel_gt* %1, %struct.intel_gt** %4, align 8
  %8 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %3, align 8
  %9 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %8, i32 0, i32 0
  %10 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  store %struct.drm_i915_gem_object* %10, %struct.drm_i915_gem_object** %5, align 8
  %11 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %12 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %11, i32 0, i32 0
  %13 = load %struct.i915_ggtt*, %struct.i915_ggtt** %12, align 8
  store %struct.i915_ggtt* %13, %struct.i915_ggtt** %6, align 8
  %14 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %3, align 8
  %15 = load %struct.i915_ggtt*, %struct.i915_ggtt** %6, align 8
  %16 = call i32 @uc_fw_ggtt_offset(%struct.intel_uc_fw* %14, %struct.i915_ggtt* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.i915_ggtt*, %struct.i915_ggtt** %6, align 8
  %18 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %19, align 8
  %21 = load %struct.i915_ggtt*, %struct.i915_ggtt** %6, align 8
  %22 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %21, i32 0, i32 0
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %25 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 %20(%struct.TYPE_4__* %22, i32 %23, i32 %27)
  ret void
}

declare dso_local i32 @uc_fw_ggtt_offset(%struct.intel_uc_fw*, %struct.i915_ggtt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
