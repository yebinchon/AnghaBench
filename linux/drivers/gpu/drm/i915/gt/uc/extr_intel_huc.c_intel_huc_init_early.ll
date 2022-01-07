; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_huc.c_intel_huc_init_early.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_huc.c_intel_huc_init_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_huc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i32 }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_4__ = type { %struct.drm_i915_private* }

@GEN11_HUC_KERNEL_LOAD_INFO = common dso_local global i32 0, align 4
@HUC_LOAD_SUCCESSFUL = common dso_local global i8* null, align 8
@HUC_STATUS2 = common dso_local global i32 0, align 4
@HUC_FW_VERIFIED = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_huc_init_early(%struct.intel_huc* %0) #0 {
  %2 = alloca %struct.intel_huc*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_huc* %0, %struct.intel_huc** %2, align 8
  %4 = load %struct.intel_huc*, %struct.intel_huc** %2, align 8
  %5 = call %struct.TYPE_4__* @huc_to_gt(%struct.intel_huc* %4)
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.intel_huc*, %struct.intel_huc** %2, align 8
  %9 = call i32 @intel_huc_fw_init_early(%struct.intel_huc* %8)
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = call i32 @INTEL_GEN(%struct.drm_i915_private* %10)
  %12 = icmp sge i32 %11, 11
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load i32, i32* @GEN11_HUC_KERNEL_LOAD_INFO, align 4
  %15 = load %struct.intel_huc*, %struct.intel_huc** %2, align 8
  %16 = getelementptr inbounds %struct.intel_huc, %struct.intel_huc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  store i32 %14, i32* %17, align 8
  %18 = load i8*, i8** @HUC_LOAD_SUCCESSFUL, align 8
  %19 = load %struct.intel_huc*, %struct.intel_huc** %2, align 8
  %20 = getelementptr inbounds %struct.intel_huc, %struct.intel_huc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i8* %18, i8** %21, align 8
  %22 = load i8*, i8** @HUC_LOAD_SUCCESSFUL, align 8
  %23 = load %struct.intel_huc*, %struct.intel_huc** %2, align 8
  %24 = getelementptr inbounds %struct.intel_huc, %struct.intel_huc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i8* %22, i8** %25, align 8
  br label %39

26:                                               ; preds = %1
  %27 = load i32, i32* @HUC_STATUS2, align 4
  %28 = load %struct.intel_huc*, %struct.intel_huc** %2, align 8
  %29 = getelementptr inbounds %struct.intel_huc, %struct.intel_huc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 8
  %31 = load i8*, i8** @HUC_FW_VERIFIED, align 8
  %32 = load %struct.intel_huc*, %struct.intel_huc** %2, align 8
  %33 = getelementptr inbounds %struct.intel_huc, %struct.intel_huc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i8* %31, i8** %34, align 8
  %35 = load i8*, i8** @HUC_FW_VERIFIED, align 8
  %36 = load %struct.intel_huc*, %struct.intel_huc** %2, align 8
  %37 = getelementptr inbounds %struct.intel_huc, %struct.intel_huc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  br label %39

39:                                               ; preds = %26, %13
  ret void
}

declare dso_local %struct.TYPE_4__* @huc_to_gt(%struct.intel_huc*) #1

declare dso_local i32 @intel_huc_fw_init_early(%struct.intel_huc*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
