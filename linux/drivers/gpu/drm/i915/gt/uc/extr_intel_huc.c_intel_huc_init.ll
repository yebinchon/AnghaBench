; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_huc.c_intel_huc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_huc.c_intel_huc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_huc = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.drm_i915_private* }

@.str = private unnamed_addr constant [16 x i8] c"failed with %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_huc_init(%struct.intel_huc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_huc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_huc* %0, %struct.intel_huc** %3, align 8
  %6 = load %struct.intel_huc*, %struct.intel_huc** %3, align 8
  %7 = call %struct.TYPE_4__* @huc_to_gt(%struct.intel_huc* %6)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %4, align 8
  %10 = load %struct.intel_huc*, %struct.intel_huc** %3, align 8
  %11 = getelementptr inbounds %struct.intel_huc, %struct.intel_huc* %10, i32 0, i32 0
  %12 = call i32 @intel_uc_fw_init(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %27

16:                                               ; preds = %1
  %17 = load %struct.intel_huc*, %struct.intel_huc** %3, align 8
  %18 = call i32 @intel_huc_rsa_data_create(%struct.intel_huc* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %23

22:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %38

23:                                               ; preds = %21
  %24 = load %struct.intel_huc*, %struct.intel_huc** %3, align 8
  %25 = getelementptr inbounds %struct.intel_huc, %struct.intel_huc* %24, i32 0, i32 0
  %26 = call i32 @intel_uc_fw_fini(i32* %25)
  br label %27

27:                                               ; preds = %23, %15
  %28 = load %struct.intel_huc*, %struct.intel_huc** %3, align 8
  %29 = getelementptr inbounds %struct.intel_huc, %struct.intel_huc* %28, i32 0, i32 0
  %30 = call i32 @intel_uc_fw_cleanup_fetch(i32* %29)
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %32 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @DRM_DEV_DEBUG_DRIVER(i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %27, %22
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_4__* @huc_to_gt(%struct.intel_huc*) #1

declare dso_local i32 @intel_uc_fw_init(i32*) #1

declare dso_local i32 @intel_huc_rsa_data_create(%struct.intel_huc*) #1

declare dso_local i32 @intel_uc_fw_fini(i32*) #1

declare dso_local i32 @intel_uc_fw_cleanup_fetch(i32*) #1

declare dso_local i32 @DRM_DEV_DEBUG_DRIVER(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
