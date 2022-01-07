; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_huc_fw.c_intel_huc_fw_init_early.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_huc_fw.c_intel_huc_fw_init_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_huc = type { i32 }
%struct.intel_gt = type { %struct.drm_i915_private*, %struct.intel_uc }
%struct.drm_i915_private = type { i32 }
%struct.intel_uc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@INTEL_UC_FW_TYPE_HUC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_huc_fw_init_early(%struct.intel_huc* %0) #0 {
  %2 = alloca %struct.intel_huc*, align 8
  %3 = alloca %struct.intel_gt*, align 8
  %4 = alloca %struct.intel_uc*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_huc* %0, %struct.intel_huc** %2, align 8
  %6 = load %struct.intel_huc*, %struct.intel_huc** %2, align 8
  %7 = call %struct.intel_gt* @huc_to_gt(%struct.intel_huc* %6)
  store %struct.intel_gt* %7, %struct.intel_gt** %3, align 8
  %8 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %9 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %8, i32 0, i32 1
  store %struct.intel_uc* %9, %struct.intel_uc** %4, align 8
  %10 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %11 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %10, i32 0, i32 0
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %5, align 8
  %13 = load %struct.intel_huc*, %struct.intel_huc** %2, align 8
  %14 = getelementptr inbounds %struct.intel_huc, %struct.intel_huc* %13, i32 0, i32 0
  %15 = load i32, i32* @INTEL_UC_FW_TYPE_HUC, align 4
  %16 = load %struct.intel_uc*, %struct.intel_uc** %4, align 8
  %17 = call i32 @intel_uc_uses_guc(%struct.intel_uc* %16)
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %19 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_i915_private* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %23 = call i32 @INTEL_REVID(%struct.drm_i915_private* %22)
  %24 = call i32 @intel_uc_fw_init_early(i32* %14, i32 %15, i32 %17, i32 %21, i32 %23)
  ret void
}

declare dso_local %struct.intel_gt* @huc_to_gt(%struct.intel_huc*) #1

declare dso_local i32 @intel_uc_fw_init_early(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @intel_uc_uses_guc(%struct.intel_uc*) #1

declare dso_local %struct.TYPE_2__* @INTEL_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_REVID(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
